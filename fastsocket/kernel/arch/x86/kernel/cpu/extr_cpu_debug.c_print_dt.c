
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_ptr {int dummy; } ;


 int print_desc_ptr (char*,void*,struct desc_ptr) ;
 int seq_printf (void*,char*,unsigned long) ;
 int store_gdt (struct desc_ptr*) ;
 int store_idt (struct desc_ptr*) ;
 int store_ldt (unsigned long) ;
 int store_tr (unsigned long) ;

__attribute__((used)) static void print_dt(void *seq)
{
 struct desc_ptr dt;
 unsigned long ldt;


 store_idt((struct desc_ptr *)&dt);
 print_desc_ptr("IDT", seq, dt);


 store_gdt((struct desc_ptr *)&dt);
 print_desc_ptr("GDT", seq, dt);


 store_ldt(ldt);
 seq_printf(seq, " LDT\t: %016lx\n", ldt);


 store_tr(ldt);
 seq_printf(seq, " TR\t: %016lx\n", ldt);
}
