
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMCR_E ;
 int arm11_read_pmnc () ;
 int arm11_write_pmnc (int) ;

int arm11_start_pmu(void)
{
 arm11_write_pmnc(arm11_read_pmnc() | PMCR_E);
 return 0;
}
