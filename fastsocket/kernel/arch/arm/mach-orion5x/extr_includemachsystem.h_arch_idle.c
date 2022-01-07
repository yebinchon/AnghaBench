
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;

__attribute__((used)) static inline void arch_idle(void)
{
 cpu_do_idle();
}
