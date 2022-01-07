
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_RELEASE ;
 int measurement_alert_subclass_unregister () ;
 int on_each_cpu (int ,int*,int) ;
 int setup_pmc_cpu ;

__attribute__((used)) static void release_pmc_hardware(void)
{
 int flags = PMC_RELEASE;

 on_each_cpu(setup_pmc_cpu, &flags, 1);
 measurement_alert_subclass_unregister();
}
