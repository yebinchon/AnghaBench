
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ldttss_desc64 {scalar_t__ base3; } ;
struct descriptor_table {unsigned long base; } ;
struct desc_struct {scalar_t__ s; int type; } ;


 unsigned long get_desc_base (struct desc_struct*) ;
 int kvm_get_gdt (struct descriptor_table*) ;
 int kvm_read_ldt () ;

unsigned long segment_base(u16 selector)
{
 struct descriptor_table gdt;
 struct desc_struct *d;
 unsigned long table_base;
 unsigned long v;

 if (selector == 0)
  return 0;

 kvm_get_gdt(&gdt);
 table_base = gdt.base;

 if (selector & 4) {
  u16 ldt_selector = kvm_read_ldt();

  table_base = segment_base(ldt_selector);
 }
 d = (struct desc_struct *)(table_base + (selector & ~7));
 v = get_desc_base(d);




 return v;
}
