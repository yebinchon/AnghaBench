
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F0 ;
 int F1 ;
 int FC ;
 int PCCR ;
 int PCCR_C ;
 int PCCR_R ;
 int SYSREG_BIT (int ) ;
 int sysreg_write (int ,int) ;

__attribute__((used)) static void avr32_perf_counter_reset(void)
{

 sysreg_write(PCCR, (SYSREG_BIT(PCCR_R)
    | SYSREG_BIT(PCCR_C)
    | SYSREG_BIT(FC)
    | SYSREG_BIT(F0)
    | SYSREG_BIT(F1)));
}
