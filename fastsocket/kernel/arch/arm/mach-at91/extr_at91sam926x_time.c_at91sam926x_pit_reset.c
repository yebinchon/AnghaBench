
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_PIT_MR ;
 int AT91_PIT_PITEN ;
 int AT91_PIT_PIVR ;
 scalar_t__ PIT_CPIV (int ) ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,int) ;
 int cpu_relax () ;
 int pit_cycle ;

__attribute__((used)) static void at91sam926x_pit_reset(void)
{

 at91_sys_write(AT91_PIT_MR, 0);


 while (PIT_CPIV(at91_sys_read(AT91_PIT_PIVR)) != 0)
  cpu_relax();


 at91_sys_write(AT91_PIT_MR, (pit_cycle - 1) | AT91_PIT_PITEN);
}
