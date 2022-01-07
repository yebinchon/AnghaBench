
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; struct device_node* node; } ;
struct macio_dev {TYPE_3__ ofdev; struct resource* resource; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct macio_chip {struct device_node* of_node; TYPE_2__ lbus; } ;
struct device_node {int name; } ;
struct TYPE_4__ {struct resource* resource; struct device dev; } ;


 struct resource iomem_resource ;
 struct macio_dev* macio_add_one_device (struct macio_chip*,struct device*,struct device_node*,struct macio_dev*,struct resource*) ;
 scalar_t__ macio_skip_device (struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 struct device_node* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void macio_pci_add_devices(struct macio_chip *chip)
{
 struct device_node *np, *pnode;
 struct macio_dev *rdev, *mdev, *mbdev = ((void*)0), *sdev = ((void*)0);
 struct device *parent = ((void*)0);
 struct resource *root_res = &iomem_resource;
 pnode = of_node_get(chip->of_node);
 if (pnode == ((void*)0))
  return;


 rdev = macio_add_one_device(chip, parent, pnode, ((void*)0), root_res);
 if (rdev == ((void*)0))
  return;
 root_res = &rdev->resource[0];


 for (np = ((void*)0); (np = of_get_next_child(pnode, np)) != ((void*)0);) {
  if (macio_skip_device(np))
   continue;
  of_node_get(np);
  mdev = macio_add_one_device(chip, &rdev->ofdev.dev, np, ((void*)0),
         root_res);
  if (mdev == ((void*)0))
   of_node_put(np);
  else if (strncmp(np->name, "media-bay", 9) == 0)
   mbdev = mdev;
  else if (strncmp(np->name, "escc", 4) == 0)
   sdev = mdev;
 }


 if (mbdev)
  for (np = ((void*)0); (np = of_get_next_child(mbdev->ofdev.node, np))
        != ((void*)0);) {
   if (macio_skip_device(np))
    continue;
   of_node_get(np);
   if (macio_add_one_device(chip, &mbdev->ofdev.dev, np,
       mbdev, root_res) == ((void*)0))
    of_node_put(np);
  }


 if (sdev) {
  for (np = ((void*)0); (np = of_get_next_child(sdev->ofdev.node, np))
        != ((void*)0);) {
   if (macio_skip_device(np))
    continue;
   of_node_get(np);
   if (macio_add_one_device(chip, &sdev->ofdev.dev, np,
       ((void*)0), root_res) == ((void*)0))
    of_node_put(np);
  }
 }
}
