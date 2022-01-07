
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot_attribute {int (* show ) (struct pci_slot*,char*) ;} ;
struct pci_slot {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct pci_slot*,char*) ;
 struct pci_slot* to_pci_slot (struct kobject*) ;
 struct pci_slot_attribute* to_pci_slot_attr (struct attribute*) ;

__attribute__((used)) static ssize_t pci_slot_attr_show(struct kobject *kobj,
     struct attribute *attr, char *buf)
{
 struct pci_slot *slot = to_pci_slot(kobj);
 struct pci_slot_attribute *attribute = to_pci_slot_attr(attr);
 return attribute->show ? attribute->show(slot, buf) : -EIO;
}
