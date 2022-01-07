
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int cpu_relax () ;
 unsigned int cyc2us (scalar_t__) ;
 scalar_t__ inl (int ) ;
 scalar_t__ pmtimer_wait_tick () ;
 int pmtmr_ioport ;

void pmtimer_wait(unsigned us)
{
 u32 a, b;
 a = pmtimer_wait_tick();
 do {
  b = inl(pmtmr_ioport);
  cpu_relax();
 } while (cyc2us(b - a) < us);
}
