
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int armv7_pmnc_dump_regs () ;
 int armv7_request_interrupts (int ,int ) ;
 int armv7_start_pmnc () ;
 int irqs ;

__attribute__((used)) static int armv7_pmnc_start(void)
{
 int ret;




 ret = armv7_request_interrupts(irqs, ARRAY_SIZE(irqs));
 if (ret >= 0)
  armv7_start_pmnc();

 return ret;
}
