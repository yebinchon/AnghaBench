
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4c_mmu_ring {int dummy; } ;
struct sun4c_mmu_entry {int dummy; } ;


 int add_ring (int *,struct sun4c_mmu_entry*) ;
 int remove_ring (struct sun4c_mmu_ring*,struct sun4c_mmu_entry*) ;
 int sun4c_kfree_ring ;

__attribute__((used)) static void free_kernel_entry(struct sun4c_mmu_entry *entry,
         struct sun4c_mmu_ring *ring)
{
        remove_ring(ring, entry);
        add_ring(&sun4c_kfree_ring, entry);
}
