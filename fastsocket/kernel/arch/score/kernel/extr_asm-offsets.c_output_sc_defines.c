
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLANK () ;
 int COMMENT (char*) ;
 int OFFSET (int ,int ,int ) ;
 int SC_ECR ;
 int SC_EMA ;
 int SC_MDCEH ;
 int SC_MDCEL ;
 int SC_PC ;
 int SC_PSR ;
 int SC_REGS ;
 int sc_ecr ;
 int sc_ema ;
 int sc_mdceh ;
 int sc_mdcel ;
 int sc_pc ;
 int sc_psr ;
 int sc_regs ;
 int sigcontext ;

void output_sc_defines(void)
{
 COMMENT("Linux sigcontext offsets.");
 OFFSET(SC_REGS, sigcontext, sc_regs);
 OFFSET(SC_MDCEH, sigcontext, sc_mdceh);
 OFFSET(SC_MDCEL, sigcontext, sc_mdcel);
 OFFSET(SC_PC, sigcontext, sc_pc);
 OFFSET(SC_PSR, sigcontext, sc_psr);
 OFFSET(SC_ECR, sigcontext, sc_ecr);
 OFFSET(SC_EMA, sigcontext, sc_ema);
 BLANK();
}
