
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_CPE_VECTOR ;
 int ia64_mca_register_cpev (int ) ;
 unsigned int local_vector_to_irq (int ) ;

__attribute__((used)) static void sn_disable_irq(unsigned int irq)
{
 if (irq == local_vector_to_irq(IA64_CPE_VECTOR))
  ia64_mca_register_cpev(0);
}
