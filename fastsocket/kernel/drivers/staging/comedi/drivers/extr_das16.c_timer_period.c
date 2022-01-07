
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;

__attribute__((used)) static inline int timer_period(void)
{
 return HZ / 20;
}
