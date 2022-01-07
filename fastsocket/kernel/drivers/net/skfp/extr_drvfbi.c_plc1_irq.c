
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct s_smc {int dummy; } ;


 int PB ;
 int PLC (int ,int ) ;
 int PL_INTR_EVENT ;
 int inpw (int ) ;
 int plc_irq (struct s_smc*,int ,int ) ;

void plc1_irq(struct s_smc *smc)
{
 u_short st = inpw(PLC(PB,PL_INTR_EVENT)) ;

 plc_irq(smc,PB,st) ;
}
