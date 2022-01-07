
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_at91rm9200 () ;
 scalar_t__ cpu_is_at91sam9261 () ;

__attribute__((used)) static bool mci_has_rwproof(void)
{
 if (cpu_is_at91sam9261() || cpu_is_at91rm9200())
  return 0;
 else
  return 1;
}
