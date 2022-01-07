
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct desc_struct {int dummy; } ;
struct TYPE_2__ {int (* _set_ldt ) (int) ;} ;


 int DESC_LDT ;
 int GDT_ENTRY_LDT ;
 int get_cpu_gdt_table (unsigned int) ;
 int pack_descriptor (struct desc_struct*,unsigned long,unsigned int,int ,int ) ;
 unsigned int smp_processor_id () ;
 int stub1 (int) ;
 TYPE_1__ vmi_ops ;
 int write_gdt_entry (int ,int,struct desc_struct*,int ) ;

__attribute__((used)) static void vmi_set_ldt(const void *addr, unsigned entries)
{
 unsigned cpu = smp_processor_id();
 struct desc_struct desc;

 pack_descriptor(&desc, (unsigned long)addr,
   entries * sizeof(struct desc_struct) - 1,
   DESC_LDT, 0);
 write_gdt_entry(get_cpu_gdt_table(cpu), GDT_ENTRY_LDT, &desc, DESC_LDT);
 vmi_ops._set_ldt(entries ? GDT_ENTRY_LDT*sizeof(struct desc_struct) : 0);
}
