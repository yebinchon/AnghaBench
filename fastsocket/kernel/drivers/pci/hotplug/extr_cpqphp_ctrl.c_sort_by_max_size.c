
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_resource {scalar_t__ length; struct pci_resource* next; } ;



__attribute__((used)) static int sort_by_max_size(struct pci_resource **head)
{
 struct pci_resource *current_res;
 struct pci_resource *next_res;
 int out_of_order = 1;

 if (!(*head))
  return 1;

 if (!((*head)->next))
  return 0;

 while (out_of_order) {
  out_of_order = 0;


  if (((*head)->next) &&
      ((*head)->length < (*head)->next->length)) {
   out_of_order++;
   current_res = *head;
   *head = (*head)->next;
   current_res->next = (*head)->next;
   (*head)->next = current_res;
  }

  current_res = *head;

  while (current_res->next && current_res->next->next) {
   if (current_res->next->length < current_res->next->next->length) {
    out_of_order++;
    next_res = current_res->next;
    current_res->next = current_res->next->next;
    current_res = current_res->next;
    next_res->next = current_res->next;
    current_res->next = next_res;
   } else
    current_res = current_res->next;
  }
 }

 return 0;
}
