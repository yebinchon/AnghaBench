
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm11_setup_pmu ;
 int em_call_function (int ) ;
 int scu_setup () ;

__attribute__((used)) static int em_setup_ctrs(void)
{
 int ret;


 ret = em_call_function(arm11_setup_pmu);
 if (ret == 0)
  scu_setup();

 return 0;
}
