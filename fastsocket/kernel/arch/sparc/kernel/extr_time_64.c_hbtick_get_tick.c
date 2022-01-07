
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long TICK_PRIV_BIT ;
 unsigned long long __hbird_read_stick () ;

__attribute__((used)) static unsigned long long hbtick_get_tick(void)
{
 return __hbird_read_stick() & ~TICK_PRIV_BIT;
}
