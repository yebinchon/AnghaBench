
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int irq_mod_ticks(unsigned int usecs, unsigned int quantum_ns)
{
 if (usecs == 0)
  return 0;
 if (usecs * 1000 < quantum_ns)
  return 1;
 return usecs * 1000 / quantum_ns;
}
