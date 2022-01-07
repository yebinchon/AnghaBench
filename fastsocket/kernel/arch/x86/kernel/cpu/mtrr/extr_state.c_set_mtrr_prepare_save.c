
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_mtrr_context {int cr4val; int ccr3; int deftype_hi; int deftype_lo; int flags; } ;


 int CX86_CCR3 ;
 int CYRIX ;
 int MSR_MTRRdefType ;
 unsigned int X86_CR0_CD ;
 int X86_CR4_PGE ;
 scalar_t__ cpu_has_pge ;
 int getCx86 (int ) ;
 scalar_t__ is_cpu (int ) ;
 int local_irq_save (int ) ;
 int rdmsr (int ,int ,int ) ;
 unsigned int read_cr0 () ;
 int read_cr4 () ;
 scalar_t__ use_intel () ;
 int wbinvd () ;
 int write_cr0 (unsigned int) ;
 int write_cr4 (int) ;

void set_mtrr_prepare_save(struct set_mtrr_context *ctxt)
{
 unsigned int cr0;


 local_irq_save(ctxt->flags);

 if (use_intel() || is_cpu(CYRIX)) {


  if (cpu_has_pge) {
   ctxt->cr4val = read_cr4();
   write_cr4(ctxt->cr4val & ~X86_CR4_PGE);
  }





  cr0 = read_cr0() | X86_CR0_CD;
  wbinvd();
  write_cr0(cr0);
  wbinvd();

  if (use_intel()) {

   rdmsr(MSR_MTRRdefType, ctxt->deftype_lo, ctxt->deftype_hi);
  } else {




   ctxt->ccr3 = getCx86(CX86_CCR3);
  }
 }
}
