
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sysrq_enabled ;
 scalar_t__ sysrq_always_enabled ;

__attribute__((used)) static inline int sysrq_on_mask(int mask)
{
 return sysrq_always_enabled || __sysrq_enabled == 1 ||
      (__sysrq_enabled & mask);
}
