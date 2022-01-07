
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {unsigned short device; unsigned short vendor; int used; struct pcilst_struct* next; } ;


 struct pcilst_struct* amcc_devices ;

struct pcilst_struct *ptr_find_free_pci_card_by_device(unsigned short vendor_id,
             unsigned short device_id)
{
 struct pcilst_struct *amcc, *next;

 for (amcc = amcc_devices; amcc; amcc = next) {
  next = amcc->next;
  if ((!amcc->used) && (amcc->device == device_id)
      && (amcc->vendor == vendor_id))
   return amcc;

 }

 return ((void*)0);
}
