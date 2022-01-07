
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __sysrq_enabled ;
 scalar_t__ sysrq_always_enabled ;

int sysrq_on(void)
{
 return __sysrq_enabled || sysrq_always_enabled;
}
