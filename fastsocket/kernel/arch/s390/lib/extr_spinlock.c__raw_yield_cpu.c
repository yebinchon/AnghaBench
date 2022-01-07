
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MACHINE_HAS_DIAG9C ;
 int _raw_yield () ;

__attribute__((used)) static inline void _raw_yield_cpu(int cpu)
{
 if (MACHINE_HAS_DIAG9C)
  asm volatile("diag %0,0,0x9c"
        : : "d" (cpu_logical_map(cpu)));
 else
  _raw_yield();
}
