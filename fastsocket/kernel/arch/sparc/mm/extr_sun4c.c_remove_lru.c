
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4c_mmu_entry {TYPE_1__* lru_prev; struct sun4c_mmu_entry* lru_next; } ;
struct TYPE_2__ {struct sun4c_mmu_entry* lru_next; } ;



__attribute__((used)) static void remove_lru(struct sun4c_mmu_entry *entry)
{
 struct sun4c_mmu_entry *next = entry->lru_next;

 (next->lru_prev = entry->lru_prev)->lru_next = next;
}
