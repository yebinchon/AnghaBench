
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u8 ;
struct pnp_bios_node {int size; int data; } ;
typedef int off_t ;
struct TYPE_2__ {int max_node_size; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct pnp_bios_node*) ;
 struct pnp_bios_node* kzalloc (int ,int ) ;
 int memcpy (char*,int ,int) ;
 TYPE_1__ node_info ;
 scalar_t__ pnp_bios_get_dev_node (long*,int,struct pnp_bios_node*) ;

__attribute__((used)) static int proc_read_node(char *buf, char **start, off_t pos,
     int count, int *eof, void *data)
{
 struct pnp_bios_node *node;
 int boot = (long)data >> 8;
 u8 nodenum = (long)data;
 int len;

 node = kzalloc(node_info.max_node_size, GFP_KERNEL);
 if (!node)
  return -ENOMEM;
 if (pnp_bios_get_dev_node(&nodenum, boot, node)) {
  kfree(node);
  return -EIO;
 }
 len = node->size - sizeof(struct pnp_bios_node);
 memcpy(buf, node->data, len);
 kfree(node);
 return len;
}
