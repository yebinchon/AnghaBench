
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int arm11_irqs ;
 int arm11_release_interrupts (int ,int ) ;
 int arm11_request_interrupts (int ,int ) ;
 int arm11_start_pmu ;
 int em_call_function (int ) ;
 int scu_start () ;

__attribute__((used)) static int em_start(void)
{
 int ret;

 ret = arm11_request_interrupts(arm11_irqs, ARRAY_SIZE(arm11_irqs));
 if (ret == 0) {
  em_call_function(arm11_start_pmu);

  ret = scu_start();
  if (ret)
   arm11_release_interrupts(arm11_irqs, ARRAY_SIZE(arm11_irqs));
 }
 return ret;
}
