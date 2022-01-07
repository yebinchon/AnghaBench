
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monotonic_clock () ;

__attribute__((used)) static inline unsigned long long get_usecs(void)
{
 return monotonic_clock() >> 12;
}
