
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_resource {int length; int base; struct pci_resource* next; } ;


 int GFP_KERNEL ;
 scalar_t__ cpqhp_resource_sort_and_combine (struct pci_resource**) ;
 struct pci_resource* kmalloc (int,int ) ;
 scalar_t__ sort_by_size (struct pci_resource**) ;

__attribute__((used)) static struct pci_resource *get_io_resource(struct pci_resource **head, u32 size)
{
 struct pci_resource *prevnode;
 struct pci_resource *node;
 struct pci_resource *split_node;
 u32 temp_dword;

 if (!(*head))
  return ((void*)0);

 if (cpqhp_resource_sort_and_combine(head))
  return ((void*)0);

 if (sort_by_size(head))
  return ((void*)0);

 for (node = *head; node; node = node->next) {
  if (node->length < size)
   continue;

  if (node->base & (size - 1)) {



   temp_dword = (node->base | (size-1)) + 1;


   if ((node->length - (temp_dword - node->base)) < size)
    continue;

   split_node = kmalloc(sizeof(*split_node), GFP_KERNEL);

   if (!split_node)
    return ((void*)0);

   split_node->base = node->base;
   split_node->length = temp_dword - node->base;
   node->base = temp_dword;
   node->length -= split_node->length;


   split_node->next = node->next;
   node->next = split_node;
  }


  if (node->length > size) {



   split_node = kmalloc(sizeof(*split_node), GFP_KERNEL);

   if (!split_node)
    return ((void*)0);

   split_node->base = node->base + size;
   split_node->length = node->length - size;
   node->length = size;


   split_node->next = node->next;
   node->next = split_node;
  }


  if (node->base & 0x300L)
   continue;




  if (*head == node) {
   *head = node->next;
  } else {
   prevnode = *head;
   while (prevnode->next != node)
    prevnode = prevnode->next;

   prevnode->next = node->next;
  }
  node->next = ((void*)0);
  break;
 }

 return node;
}
