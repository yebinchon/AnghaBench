
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dest_logical; } ;


 int APIC_DEST_ALLBUT ;
 int BITS_PER_LONG ;
 int NMI_VECTOR ;
 int __default_send_IPI_shortcut (int ,int,int ) ;
 int _flat_send_IPI_mask (unsigned long,int) ;
 TYPE_1__* apic ;
 int clear_bit (int,unsigned long*) ;
 int cpu_online_mask ;
 unsigned long* cpumask_bits (int ) ;
 int cpumask_equal (int ,int ) ;
 int cpumask_of (int) ;
 int num_online_cpus () ;
 int smp_processor_id () ;

__attribute__((used)) static void flat_send_IPI_allbutself(int vector)
{
 int cpu = smp_processor_id();



 int hotplug = 0;

 if (hotplug || vector == NMI_VECTOR) {
  if (!cpumask_equal(cpu_online_mask, cpumask_of(cpu))) {
   unsigned long mask = cpumask_bits(cpu_online_mask)[0];

   if (cpu < BITS_PER_LONG)
    clear_bit(cpu, &mask);

   _flat_send_IPI_mask(mask, vector);
  }
 } else if (num_online_cpus() > 1) {
  __default_send_IPI_shortcut(APIC_DEST_ALLBUT,
         vector, apic->dest_logical);
 }
}
