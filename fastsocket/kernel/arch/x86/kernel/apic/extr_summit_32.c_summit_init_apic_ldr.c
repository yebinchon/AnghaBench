
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ APIC_CLUSTER (scalar_t__) ;
 int APIC_DFR ;
 int APIC_LDR ;
 unsigned long APIC_LDR_MASK ;
 scalar_t__ BAD_APICID ;
 int BUG_ON (int) ;
 unsigned long SET_APIC_LOGICAL_ID (unsigned long) ;
 unsigned long SUMMIT_APIC_DFR_VALUE ;
 int XAPIC_DEST_CPUS_SHIFT ;
 unsigned long apic_read (int ) ;
 int apic_write (int ,unsigned long) ;
 scalar_t__* cpu_2_logical_apicid ;
 int hard_smp_processor_id () ;
 int nr_cpu_ids ;

__attribute__((used)) static void summit_init_apic_ldr(void)
{
 unsigned long val, id;
 int count = 0;
 u8 my_id = (u8)hard_smp_processor_id();
 u8 my_cluster = APIC_CLUSTER(my_id);
 BUG_ON(count >= XAPIC_DEST_CPUS_SHIFT);
 id = my_cluster | (1UL << count);
 apic_write(APIC_DFR, SUMMIT_APIC_DFR_VALUE);
 val = apic_read(APIC_LDR) & ~APIC_LDR_MASK;
 val |= SET_APIC_LOGICAL_ID(id);
 apic_write(APIC_LDR, val);
}
