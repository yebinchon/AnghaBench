
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long get_cycles () ;

__attribute__((used)) static inline unsigned long long monotonic_clock(void)
{
 return get_cycles();
}
