
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_halt () ;

void machine_halt(void)
{
 if (mach_halt)
  mach_halt();
 for (;;);
}
