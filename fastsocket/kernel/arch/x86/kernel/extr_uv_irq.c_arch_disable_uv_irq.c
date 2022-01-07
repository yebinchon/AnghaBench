
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_IO_APIC_route_entry {int mask; } ;


 int BUILD_BUG_ON (int) ;
 int uv_write_global_mmr64 (int,unsigned long,unsigned long) ;

__attribute__((used)) static void arch_disable_uv_irq(int mmr_pnode, unsigned long mmr_offset)
{
 unsigned long mmr_value;
 struct uv_IO_APIC_route_entry *entry;

 BUILD_BUG_ON(sizeof(struct uv_IO_APIC_route_entry) !=
   sizeof(unsigned long));

 mmr_value = 0;
 entry = (struct uv_IO_APIC_route_entry *)&mmr_value;
 entry->mask = 1;

 uv_write_global_mmr64(mmr_pnode, mmr_offset, mmr_value);
}
