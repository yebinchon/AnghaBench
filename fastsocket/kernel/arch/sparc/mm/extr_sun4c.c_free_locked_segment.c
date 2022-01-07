
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4c_mmu_entry {int dummy; } ;


 unsigned long SUN4C_REAL_PGDIR_MASK ;
 int add_ring (int *,struct sun4c_mmu_entry*) ;
 int flush_user_windows () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int max_user_taken_entries ;
 struct sun4c_mmu_entry* mmu_entry_pool ;
 int sun4c_flush_segment (unsigned long) ;
 unsigned char sun4c_get_segmap (unsigned long) ;
 int sun4c_kernel_unmap (struct sun4c_mmu_entry*) ;
 int sun4c_ufree_ring ;

__attribute__((used)) static void free_locked_segment(unsigned long addr)
{
 struct sun4c_mmu_entry *entry;
 unsigned long flags;
 unsigned char pseg;

 local_irq_save(flags);
 addr &= SUN4C_REAL_PGDIR_MASK;
 pseg = sun4c_get_segmap(addr);
 entry = &mmu_entry_pool[pseg];

 flush_user_windows();
 sun4c_flush_segment(addr);
 sun4c_kernel_unmap(entry);
 add_ring(&sun4c_ufree_ring, entry);
 max_user_taken_entries++;
 local_irq_restore(flags);
}
