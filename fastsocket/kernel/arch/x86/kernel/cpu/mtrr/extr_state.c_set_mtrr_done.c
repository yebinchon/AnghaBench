
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_mtrr_context {int flags; int cr4val; int ccr3; int deftype_hi; int deftype_lo; } ;


 int CX86_CCR3 ;
 int CYRIX ;
 int MSR_MTRRdefType ;
 scalar_t__ cpu_has_pge ;
 scalar_t__ is_cpu (int ) ;
 int local_irq_restore (int ) ;
 int mtrr_wrmsr (int ,int ,int ) ;
 int read_cr0 () ;
 int setCx86 (int ,int ) ;
 scalar_t__ use_intel () ;
 int wbinvd () ;
 int write_cr0 (int) ;
 int write_cr4 (int ) ;

void set_mtrr_done(struct set_mtrr_context *ctxt)
{
 if (use_intel() || is_cpu(CYRIX)) {


  wbinvd();


  if (use_intel()) {

   mtrr_wrmsr(MSR_MTRRdefType, ctxt->deftype_lo,
       ctxt->deftype_hi);
  } else {




   setCx86(CX86_CCR3, ctxt->ccr3);
  }


  write_cr0(read_cr0() & 0xbfffffff);


  if (cpu_has_pge)
   write_cr4(ctxt->cr4val);
 }

 local_irq_restore(ctxt->flags);
}
