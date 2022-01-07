
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {struct pcilst_struct* next; } ;


 struct pcilst_struct* amcc_devices ;
 int kfree (struct pcilst_struct*) ;

void v_pci_card_list_cleanup(unsigned short pci_vendor)
{
 struct pcilst_struct *amcc, *next;

 for (amcc = amcc_devices; amcc; amcc = next) {
  next = amcc->next;
  kfree(amcc);
 }

 amcc_devices = ((void*)0);
}
