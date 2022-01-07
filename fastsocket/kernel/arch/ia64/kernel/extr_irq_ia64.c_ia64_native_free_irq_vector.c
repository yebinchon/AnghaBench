
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_FIRST_DEVICE_VECTOR ;
 int IA64_LAST_DEVICE_VECTOR ;
 int clear_irq_vector (int) ;

void
ia64_native_free_irq_vector (int vector)
{
 if (vector < IA64_FIRST_DEVICE_VECTOR ||
     vector > IA64_LAST_DEVICE_VECTOR)
  return;
 clear_irq_vector(vector);
}
