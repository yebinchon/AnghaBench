
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_reset () ;

void machine_restart(char * __unused)
{
 if (mach_reset)
  mach_reset();
 for (;;);
}
