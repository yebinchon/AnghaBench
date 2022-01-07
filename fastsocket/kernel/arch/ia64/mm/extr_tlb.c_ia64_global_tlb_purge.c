
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int activate_context (struct mm_struct*) ;
 TYPE_1__* current ;
 int down_spin (int *) ;
 int flush_tlb_all () ;
 int ia64_ptcga (unsigned long,unsigned long) ;
 int ia64_srlz_i () ;
 scalar_t__ need_ptcg_sem ;
 int ptcg_sem ;
 int toolatetochangeptcgsem ;
 int up_spin (int *) ;

void
ia64_global_tlb_purge (struct mm_struct *mm, unsigned long start,
         unsigned long end, unsigned long nbits)
{
 struct mm_struct *active_mm = current->active_mm;

 toolatetochangeptcgsem = 1;

 if (mm != active_mm) {

  if (mm && active_mm) {
   activate_context(mm);
  } else {
   flush_tlb_all();
   return;
  }
 }

 if (need_ptcg_sem)
  down_spin(&ptcg_sem);

 do {



  ia64_ptcga(start, (nbits << 2));
  ia64_srlz_i();
  start += (1UL << nbits);
 } while (start < end);

 if (need_ptcg_sem)
  up_spin(&ptcg_sem);

        if (mm != active_mm) {
                activate_context(active_mm);
        }
}
