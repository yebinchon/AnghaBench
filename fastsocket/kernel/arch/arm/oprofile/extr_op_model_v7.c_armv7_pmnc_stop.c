
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int armv7_pmnc_dump_regs () ;
 int armv7_release_interrupts (int ,int ) ;
 int armv7_stop_pmnc () ;
 int irqs ;

__attribute__((used)) static void armv7_pmnc_stop(void)
{



 armv7_stop_pmnc();
 armv7_release_interrupts(irqs, ARRAY_SIZE(irqs));
}
