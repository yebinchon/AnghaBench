
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int CPU_VECTOR_TO_IRQ (int ,int ) ;
 int smp_processor_id () ;

unsigned int sn_local_vector_to_irq(u8 vector)
{
 return (CPU_VECTOR_TO_IRQ(smp_processor_id(), vector));
}
