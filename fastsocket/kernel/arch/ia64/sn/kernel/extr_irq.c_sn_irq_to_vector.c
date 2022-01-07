
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ia64_vector ;


 int IA64_NUM_VECTORS ;

ia64_vector sn_irq_to_vector(int irq)
{
 if (irq >= IA64_NUM_VECTORS)
  return 0;
 return (ia64_vector)irq;
}
