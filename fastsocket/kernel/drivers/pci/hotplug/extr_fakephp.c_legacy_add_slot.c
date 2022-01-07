
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct legacy_slot {int list; int dev; int kobj; } ;
struct TYPE_2__ {int kobj; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (int *) ;
 int dev_warn (int *,char*) ;
 scalar_t__ kobject_init_and_add (int *,int *,int *,char*,int ) ;
 struct legacy_slot* kzalloc (int,int ) ;
 int legacy_ktype ;
 int legacy_list ;
 int list_add (int *,int *) ;
 int pci_dev_get (struct pci_dev*) ;
 TYPE_1__* pci_slots_kset ;

__attribute__((used)) static int legacy_add_slot(struct pci_dev *pdev)
{
 struct legacy_slot *slot = kzalloc(sizeof(*slot), GFP_KERNEL);

 if (!slot)
  return -ENOMEM;

 if (kobject_init_and_add(&slot->kobj, &legacy_ktype,
     &pci_slots_kset->kobj, "%s",
     dev_name(&pdev->dev))) {
  dev_warn(&pdev->dev, "Failed to created legacy fake slot\n");
  return -EINVAL;
 }
 slot->dev = pci_dev_get(pdev);

 list_add(&slot->list, &legacy_list);

 return 0;
}
