
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_online (int) ;
 int cpumask_of (int) ;
 int current ;
 int disable_IO_APIC (int ) ;
 int hpet_disable () ;
 int lapic_shutdown () ;
 int local_irq_disable () ;
 int nr_cpu_ids ;
 int pci_iommu_shutdown () ;
 int reboot_cpu ;
 int set_cpus_allowed_ptr (int ,int ) ;
 int smp_processor_id () ;
 int stop_other_cpus () ;

void native_machine_shutdown(void)
{
 lapic_shutdown();
}
