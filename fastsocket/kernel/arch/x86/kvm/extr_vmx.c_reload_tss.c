
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor_table {scalar_t__ base; } ;
struct desc_struct {int type; } ;


 size_t GDT_ENTRY_TSS ;
 int kvm_get_gdt (struct descriptor_table*) ;
 int load_TR_desc () ;

__attribute__((used)) static void reload_tss(void)
{



 struct descriptor_table gdt;
 struct desc_struct *descs;

 kvm_get_gdt(&gdt);
 descs = (void *)gdt.base;
 descs[GDT_ENTRY_TSS].type = 9;
 load_TR_desc();
}
