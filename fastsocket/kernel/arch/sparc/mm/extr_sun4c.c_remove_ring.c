
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4c_mmu_ring {int num_entries; } ;
struct sun4c_mmu_entry {TYPE_1__* prev; struct sun4c_mmu_entry* next; } ;
struct TYPE_2__ {struct sun4c_mmu_entry* next; } ;



__attribute__((used)) static inline void remove_ring(struct sun4c_mmu_ring *ring,
       struct sun4c_mmu_entry *entry)
{
 struct sun4c_mmu_entry *next = entry->next;

 (next->prev = entry->prev)->next = next;
 ring->num_entries--;
}
