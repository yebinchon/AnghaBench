
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int IO_STATE (int*,int ,int ) ;
 int* R_IRQ_MASK0_RD ;
 int active ;
 int nmi_handler (struct pt_regs*) ;
 int nmi_pin ;

void handle_nmi(struct pt_regs *regs)
{
 if (nmi_handler)
  nmi_handler(regs);




 while (*R_IRQ_MASK0_RD & IO_STATE(R_IRQ_MASK0_RD, nmi_pin, active))
  ;
}
