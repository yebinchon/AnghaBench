
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCCR ;
 int PCCR_E ;
 int SYSREG_BIT (int ) ;
 int pr_debug (char*) ;
 int sysreg_read (int ) ;
 int sysreg_write (int ,int) ;

__attribute__((used)) static int avr32_perf_counter_start(void)
{
 pr_debug("avr32_perf_counter_start\n");

 sysreg_write(PCCR, sysreg_read(PCCR) | SYSREG_BIT(PCCR_E));

 return 0;
}
