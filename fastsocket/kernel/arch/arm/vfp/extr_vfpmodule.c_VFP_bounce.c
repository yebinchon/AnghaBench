
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int ARM_pc; } ;


 int FPEXC ;
 int FPEXC_DEX ;
 int FPEXC_EX ;
 int FPEXC_FP2V ;
 int FPEXC_LENGTH_BIT ;
 int FPEXC_LENGTH_MASK ;
 int FPEXC_TRAP_MASK ;
 int FPEXC_VV ;
 int FPINST ;
 int FPINST2 ;
 int FPSCR ;
 int FPSCR_IXE ;
 int FPSCR_LENGTH_BIT ;
 int FPSCR_LENGTH_MASK ;
 int FPSID ;
 int FPSID_ARCH_BIT ;
 int FPSID_ARCH_MASK ;
 int VFP_EXCEPTION_ERROR ;
 int barrier () ;
 int fmrx (int ) ;
 int fmxr (int ,int) ;
 int pr_debug (char*,int,int) ;
 int preempt_enable () ;
 int vfp_emulate_instruction (int,int,struct pt_regs*) ;
 int vfp_raise_exceptions (int,int,int,struct pt_regs*) ;

void VFP_bounce(u32 trigger, u32 fpexc, struct pt_regs *regs)
{
 u32 fpscr, orig_fpscr, fpsid, exceptions;

 pr_debug("VFP: bounce: trigger %08x fpexc %08x\n", trigger, fpexc);
 fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));

 fpsid = fmrx(FPSID);
 orig_fpscr = fpscr = fmrx(FPSCR);




 if ((fpsid & FPSID_ARCH_MASK) == (1 << FPSID_ARCH_BIT)
     && (fpscr & FPSCR_IXE)) {



  goto emulate;
 }

 if (fpexc & FPEXC_EX) {





  trigger = fmrx(FPINST);
  regs->ARM_pc -= 4;

 } else if (!(fpexc & FPEXC_DEX)) {





   vfp_raise_exceptions(VFP_EXCEPTION_ERROR, trigger, fpscr, regs);
  goto exit;
 }






 if (fpexc & (FPEXC_EX | FPEXC_VV)) {
  u32 len;

  len = fpexc + (1 << FPEXC_LENGTH_BIT);

  fpscr &= ~FPSCR_LENGTH_MASK;
  fpscr |= (len & FPEXC_LENGTH_MASK) << (FPSCR_LENGTH_BIT - FPEXC_LENGTH_BIT);
 }






 exceptions = vfp_emulate_instruction(trigger, fpscr, regs);
 if (exceptions)
  vfp_raise_exceptions(exceptions, trigger, orig_fpscr, regs);





 if (fpexc ^ (FPEXC_EX | FPEXC_FP2V))
  goto exit;





 barrier();
 trigger = fmrx(FPINST2);

 emulate:
 exceptions = vfp_emulate_instruction(trigger, orig_fpscr, regs);
 if (exceptions)
  vfp_raise_exceptions(exceptions, trigger, orig_fpscr, regs);
 exit:
 preempt_enable();
}
