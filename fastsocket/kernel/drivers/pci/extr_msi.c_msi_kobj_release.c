
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_desc {int dev; } ;
struct kobject {int dummy; } ;


 int pci_dev_put (int ) ;
 struct msi_desc* to_msi_desc (struct kobject*) ;

void msi_kobj_release(struct kobject *kobj)
{
 struct msi_desc *entry = to_msi_desc(kobj);

 pci_dev_put(entry->dev);
}
