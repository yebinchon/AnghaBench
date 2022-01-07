
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_mtrr_context {int deftype_lo; int ccr3; int deftype_hi; } ;


 int CX86_CCR3 ;
 int CYRIX ;
 int MSR_MTRRdefType ;
 scalar_t__ is_cpu (int ) ;
 int mtrr_wrmsr (int ,int,int ) ;
 int setCx86 (int ,int) ;
 scalar_t__ use_intel () ;

void set_mtrr_cache_disable(struct set_mtrr_context *ctxt)
{
 if (use_intel()) {

  mtrr_wrmsr(MSR_MTRRdefType, ctxt->deftype_lo & 0xf300UL,
        ctxt->deftype_hi);
 } else {
  if (is_cpu(CYRIX)) {

   setCx86(CX86_CCR3, (ctxt->ccr3 & 0x0f) | 0x10);
  }
 }
}
