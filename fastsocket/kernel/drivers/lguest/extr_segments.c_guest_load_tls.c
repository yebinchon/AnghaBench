
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct desc_struct* gdt; } ;
struct lg_cpu {int changed; TYPE_1__ arch; } ;
struct desc_struct {int dummy; } ;


 int CHANGED_GDT_TLS ;
 int GDT_ENTRY_TLS_ENTRIES ;
 scalar_t__ GDT_ENTRY_TLS_MAX ;
 size_t GDT_ENTRY_TLS_MIN ;
 int __lgread (struct lg_cpu*,struct desc_struct*,unsigned long,int) ;
 int fixup_gdt_table (struct lg_cpu*,size_t,scalar_t__) ;

void guest_load_tls(struct lg_cpu *cpu, unsigned long gtls)
{
 struct desc_struct *tls = &cpu->arch.gdt[GDT_ENTRY_TLS_MIN];

 __lgread(cpu, tls, gtls, sizeof(*tls)*GDT_ENTRY_TLS_ENTRIES);
 fixup_gdt_table(cpu, GDT_ENTRY_TLS_MIN, GDT_ENTRY_TLS_MAX+1);

 cpu->changed |= CHANGED_GDT_TLS;
}
