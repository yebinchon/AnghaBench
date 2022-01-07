
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int need_resched () ;

__attribute__((used)) static void default_idle(void)
{
 if (!need_resched())




  __asm__("stop #0x2000" : : : "cc");

}
