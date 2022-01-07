
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long nip; } ;


 int SPRN_SIAR ;
 unsigned long mfspr (int ) ;
 unsigned long perf_ip_adjust (struct pt_regs*) ;
 int regs_use_siar (struct pt_regs*) ;
 scalar_t__ siar_valid (struct pt_regs*) ;

unsigned long perf_instruction_pointer(struct pt_regs *regs)
{
 bool use_siar = regs_use_siar(regs);

 if (use_siar && siar_valid(regs))
  return mfspr(SPRN_SIAR) + perf_ip_adjust(regs);
 else if (use_siar)
  return 0;
 else
  return regs->nip;
}
