
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct gru_thread_state {struct mm_struct* ts_mm; } ;


 int VTOP_INVALID ;
 int VTOP_RETRY ;
 int VTOP_SUCCESS ;
 int atomic_pte_lookup (struct vm_area_struct*,unsigned long,int,unsigned long*,int*) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 scalar_t__ is_gru_paddr (unsigned long) ;
 scalar_t__ non_atomic_pte_lookup (struct vm_area_struct*,unsigned long,int,unsigned long*,int*) ;
 int rmb () ;
 unsigned long uv_soc_phys_ram_to_gpa (unsigned long) ;

__attribute__((used)) static int gru_vtop(struct gru_thread_state *gts, unsigned long vaddr,
      int write, int atomic, unsigned long *gpa, int *pageshift)
{
 struct mm_struct *mm = gts->ts_mm;
 struct vm_area_struct *vma;
 unsigned long paddr;
 int ret, ps;

 vma = find_vma(mm, vaddr);
 if (!vma)
  goto inval;





 rmb();
 ret = atomic_pte_lookup(vma, vaddr, write, &paddr, &ps);
 if (ret) {
  if (atomic)
   goto upm;
  if (non_atomic_pte_lookup(vma, vaddr, write, &paddr, &ps))
   goto inval;
 }
 if (is_gru_paddr(paddr))
  goto inval;
 paddr = paddr & ~((1UL << ps) - 1);
 *gpa = uv_soc_phys_ram_to_gpa(paddr);
 *pageshift = ps;
 return VTOP_SUCCESS;

inval:
 return VTOP_INVALID;
upm:
 return VTOP_RETRY;
}
