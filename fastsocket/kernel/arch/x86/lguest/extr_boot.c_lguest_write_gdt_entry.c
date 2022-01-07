
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {int b; int a; } ;


 int LHCALL_LOAD_GDT_ENTRY ;
 int kvm_hypercall3 (int ,int,int ,int ) ;
 int native_write_gdt_entry (struct desc_struct*,int,void const*,int) ;

__attribute__((used)) static void lguest_write_gdt_entry(struct desc_struct *dt, int entrynum,
       const void *desc, int type)
{
 native_write_gdt_entry(dt, entrynum, desc, type);

 kvm_hypercall3(LHCALL_LOAD_GDT_ENTRY, entrynum,
         dt[entrynum].a, dt[entrynum].b);
}
