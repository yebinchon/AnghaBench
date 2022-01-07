
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4c_mmu_entry {int dummy; } ;


 int add_ring (int *,struct sun4c_mmu_entry*) ;
 int remove_lru (struct sun4c_mmu_entry*) ;
 int remove_ring (scalar_t__,struct sun4c_mmu_entry*) ;
 scalar_t__ sun4c_context_ring ;
 int sun4c_ufree_ring ;

__attribute__((used)) static void free_user_entry(int ctx, struct sun4c_mmu_entry *entry)
{
        remove_ring(sun4c_context_ring+ctx, entry);
 remove_lru(entry);
        add_ring(&sun4c_ufree_ring, entry);
}
