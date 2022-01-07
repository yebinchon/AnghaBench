
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ scu_base ;
 unsigned int scu_get_core_count (scalar_t__) ;

__attribute__((used)) static inline unsigned int get_core_count(void)
{
 if (scu_base)
  return scu_get_core_count(scu_base);
 return 1;
}
