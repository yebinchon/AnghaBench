
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int arm11_request_interrupts (int ,int ) ;
 int arm11_start_pmu () ;
 int irqs ;

__attribute__((used)) static int armv6_pmu_start(void)
{
 int ret;

 ret = arm11_request_interrupts(irqs, ARRAY_SIZE(irqs));
 if (ret >= 0)
  ret = arm11_start_pmu();

 return ret;
}
