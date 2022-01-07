
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;

void m68328_reset (void)
{
  local_irq_disable();
  asm volatile ("moveal #0x10c00000, %a0;\n\t"
  "moveb #0, 0xFFFFF300;\n\t"
  "moveal 0(%a0), %sp;\n\t"
  "moveal 4(%a0), %a0;\n\t"
  "jmp (%a0);");
}
