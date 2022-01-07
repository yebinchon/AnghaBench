
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int gate_desc ;


 int LHCALL_LOAD_IDT_ENTRY ;
 int kvm_hypercall3 (int ,int,int ,int ) ;
 int native_write_idt_entry (int *,int,int const*) ;

__attribute__((used)) static void lguest_write_idt_entry(gate_desc *dt,
       int entrynum, const gate_desc *g)
{






 u32 *desc = (u32 *)g;

 native_write_idt_entry(dt, entrynum, g);

 kvm_hypercall3(LHCALL_LOAD_IDT_ENTRY, entrynum, desc[0], desc[1]);
}
