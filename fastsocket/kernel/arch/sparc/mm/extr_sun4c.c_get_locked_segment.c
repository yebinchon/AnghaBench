
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4c_mmu_entry {unsigned long vaddr; } ;


 unsigned long SUN4C_REAL_PGDIR_MASK ;
 int flush_user_windows () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int max_user_taken_entries ;
 int sun4c_kernel_map (struct sun4c_mmu_entry*) ;
 struct sun4c_mmu_entry* sun4c_user_strategy () ;

__attribute__((used)) static void get_locked_segment(unsigned long addr)
{
 struct sun4c_mmu_entry *stolen;
 unsigned long flags;

 local_irq_save(flags);
 addr &= SUN4C_REAL_PGDIR_MASK;
 stolen = sun4c_user_strategy();
 max_user_taken_entries--;
 stolen->vaddr = addr;
 flush_user_windows();
 sun4c_kernel_map(stolen);
 local_irq_restore(flags);
}
