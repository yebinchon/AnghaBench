
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CCNT ;
 int PMCR_E ;
 unsigned int PMN0 ;
 int arm11_read_pmnc () ;
 int arm11_reset_counter (unsigned int) ;
 int arm11_write_pmnc (int) ;

int arm11_stop_pmu(void)
{
 unsigned int cnt;

 arm11_write_pmnc(arm11_read_pmnc() & ~PMCR_E);

 for (cnt = PMN0; cnt <= CCNT; cnt++)
  arm11_reset_counter(cnt);

 return 0;
}
