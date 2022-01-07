
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_MASK_ALL ;
 int EINVAL ;
 int IA64_FIRST_DEVICE_VECTOR ;
 int IA64_LAST_DEVICE_VECTOR ;
 int bind_irq_vector (int,int,int ) ;

int
reserve_irq_vector (int vector)
{
 if (vector < IA64_FIRST_DEVICE_VECTOR ||
     vector > IA64_LAST_DEVICE_VECTOR)
  return -EINVAL;
 return !!bind_irq_vector(vector, vector, CPU_MASK_ALL);
}
