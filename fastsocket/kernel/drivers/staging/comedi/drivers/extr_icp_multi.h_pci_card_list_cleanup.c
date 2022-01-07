
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {int pcidev; struct pcilst_struct* next; } ;


 struct pcilst_struct* inova_devices ;
 int kfree (struct pcilst_struct*) ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void pci_card_list_cleanup(unsigned short pci_vendor)
{
 struct pcilst_struct *inova, *next;

 for (inova = inova_devices; inova; inova = next) {
  next = inova->next;
  pci_dev_put(inova->pcidev);
  kfree(inova);
 }

 inova_devices = ((void*)0);
}
