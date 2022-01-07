
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4c_mmu_entry {unsigned long vaddr; struct sun4c_mmu_entry* next; struct sun4c_mmu_entry* prev; } ;
struct sun4c_mmu_ring {int num_entries; struct sun4c_mmu_entry ringhd; } ;


 int add_lru (struct sun4c_mmu_entry*) ;

__attribute__((used)) static void add_ring_ordered(struct sun4c_mmu_ring *ring,
        struct sun4c_mmu_entry *entry)
{
 struct sun4c_mmu_entry *head = &ring->ringhd;
 unsigned long addr = entry->vaddr;

 while ((head->next != &ring->ringhd) && (head->next->vaddr < addr))
  head = head->next;

 entry->prev = head;
 (entry->next = head->next)->prev = entry;
 head->next = entry;
 ring->num_entries++;

 add_lru(entry);
}
