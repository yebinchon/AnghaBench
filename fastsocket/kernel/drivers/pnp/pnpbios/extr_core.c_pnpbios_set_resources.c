
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pnp_dev {int dev; int number; } ;
struct pnp_bios_node {int handle; } ;
struct TYPE_2__ {int max_node_size; } ;


 int ENODEV ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ PNPMODE_DYNAMIC ;
 int kfree (struct pnp_bios_node*) ;
 struct pnp_bios_node* kzalloc (int ,int ) ;
 TYPE_1__ node_info ;
 scalar_t__ pnp_bios_get_dev_node (int *,char,struct pnp_bios_node*) ;
 int pnp_bios_set_dev_node (int ,char,struct pnp_bios_node*) ;
 int pnp_dbg (int *,char*) ;
 int pnpbios_is_dynamic (struct pnp_dev*) ;
 scalar_t__ pnpbios_write_resources_to_node (struct pnp_dev*,struct pnp_bios_node*) ;

__attribute__((used)) static int pnpbios_set_resources(struct pnp_dev *dev)
{
 u8 nodenum = dev->number;
 struct pnp_bios_node *node;
 int ret;

 if (!pnpbios_is_dynamic(dev))
  return -EPERM;

 pnp_dbg(&dev->dev, "set resources\n");
 node = kzalloc(node_info.max_node_size, GFP_KERNEL);
 if (!node)
  return -1;
 if (pnp_bios_get_dev_node(&nodenum, (char)PNPMODE_DYNAMIC, node)) {
  kfree(node);
  return -ENODEV;
 }
 if (pnpbios_write_resources_to_node(dev, node) < 0) {
  kfree(node);
  return -1;
 }
 ret = pnp_bios_set_dev_node(node->handle, (char)PNPMODE_DYNAMIC, node);
 kfree(node);
 if (ret > 0)
  ret = -1;
 return ret;
}
