
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {unsigned short device; unsigned short vendor; int used; struct pcilst_struct* next; } ;


 struct pcilst_struct* inova_devices ;

__attribute__((used)) static struct pcilst_struct *find_free_pci_card_by_device(unsigned short
         vendor_id,
         unsigned short
         device_id)
{
 struct pcilst_struct *inova, *next;

 for (inova = inova_devices; inova; inova = next) {
  next = inova->next;
  if ((!inova->used) && (inova->device == device_id)
      && (inova->vendor == vendor_id))
   return inova;

 }

 return ((void*)0);
}
