
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TICK_PRIV_BIT ;

__attribute__((used)) static unsigned long long stick_get_tick(void)
{
 unsigned long ret;

 __asm__ __volatile__("rd	%%asr24, %0"
        : "=r" (ret));

 return ret & ~TICK_PRIV_BIT;
}
