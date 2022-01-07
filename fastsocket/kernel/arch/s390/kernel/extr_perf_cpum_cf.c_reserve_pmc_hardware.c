
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_INIT ;
 int measurement_alert_subclass_register () ;
 int on_each_cpu (int ,int*,int) ;
 int setup_pmc_cpu ;

__attribute__((used)) static int reserve_pmc_hardware(void)
{
 int flags = PMC_INIT;

 on_each_cpu(setup_pmc_cpu, &flags, 1);
 measurement_alert_subclass_register();

 return 0;
}
