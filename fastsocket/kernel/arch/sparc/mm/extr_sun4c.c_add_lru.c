
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4c_mmu_entry {struct sun4c_mmu_entry* lru_prev; struct sun4c_mmu_entry* lru_next; } ;
struct sun4c_mmu_ring {struct sun4c_mmu_entry ringhd; } ;


 struct sun4c_mmu_ring sun4c_ulru_ring ;

__attribute__((used)) static inline void add_lru(struct sun4c_mmu_entry *entry)
{
 struct sun4c_mmu_ring *ring = &sun4c_ulru_ring;
 struct sun4c_mmu_entry *head = &ring->ringhd;

 entry->lru_next = head;
 (entry->lru_prev = head->lru_prev)->lru_next = entry;
 head->lru_prev = entry;
}
