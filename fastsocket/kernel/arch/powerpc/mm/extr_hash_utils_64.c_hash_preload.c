
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_psize; int id; } ;
struct mm_struct {TYPE_1__ context; void* pgd; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 int DBG_LOW (char*,struct mm_struct*,void*,unsigned long,unsigned long,unsigned long) ;
 int MMU_PAGE_64K ;
 scalar_t__ REGION_ID (unsigned long) ;
 scalar_t__ USER_REGION_ID ;
 int _PAGE_4K_PFN ;
 int _PAGE_NO_CACHE ;
 int __hash_page_4K (unsigned long,unsigned long,unsigned long,int *,unsigned long,int,int,int ) ;
 int __hash_page_64K (unsigned long,unsigned long,unsigned long,int *,unsigned long,int,int) ;
 scalar_t__ cpumask_equal (int ,int ) ;
 int cpumask_of (int ) ;
 int * find_linux_pte (void*,unsigned long) ;
 int get_slice_psize (struct mm_struct*,unsigned long) ;
 unsigned long get_vsid (int ,unsigned long,int) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mm_cpumask (struct mm_struct*) ;
 int pte_val (int ) ;
 int smp_processor_id () ;
 int subpage_protection (void*,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int user_segment_size (unsigned long) ;

void hash_preload(struct mm_struct *mm, unsigned long ea,
    unsigned long access, unsigned long trap)
{
 unsigned long vsid;
 void *pgdir;
 pte_t *ptep;
 unsigned long flags;
 int rc, ssize, local = 0;

 BUG_ON(REGION_ID(ea) != USER_REGION_ID);







 DBG_LOW("hash_preload(mm=%p, mm->pgdir=%p, ea=%016lx, access=%lx,"
  " trap=%lx\n", mm, mm->pgd, ea, access, trap);


 pgdir = mm->pgd;
 if (pgdir == ((void*)0))
  return;
 ptep = find_linux_pte(pgdir, ea);
 if (!ptep)
  return;
 ssize = user_segment_size(ea);
 vsid = get_vsid(mm->context.id, ea, ssize);


 local_irq_save(flags);


 if (cpumask_equal(mm_cpumask(mm), cpumask_of(smp_processor_id())))
  local = 1;







  rc = __hash_page_4K(ea, access, vsid, ptep, trap, local, ssize,
        subpage_protection(pgdir, ea));




 if (rc == -1)
  hash_failure_debug(ea, access, vsid, trap, ssize,
       mm->context.user_psize, pte_val(*ptep));

 local_irq_restore(flags);
}
