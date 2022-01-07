
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MACHINE_HAS_DIAG44 ;

__attribute__((used)) static inline void _raw_yield(void)
{
 if (MACHINE_HAS_DIAG44)
  asm volatile("diag 0,0,0x44");
}
