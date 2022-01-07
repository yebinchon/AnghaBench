
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trap_info {scalar_t__ address; } ;
typedef int gate_desc ;
struct TYPE_2__ {unsigned long address; unsigned long size; } ;


 int BUG () ;
 scalar_t__ HYPERVISOR_set_trap_table (struct trap_info*) ;
 TYPE_1__ __get_cpu_var (int ) ;
 scalar_t__ cvt_gate_to_trap (int,int const*,struct trap_info*) ;
 int idt_desc ;
 int native_write_idt_entry (int *,int,int const*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int xen_mc_flush () ;

__attribute__((used)) static void xen_write_idt_entry(gate_desc *dt, int entrynum, const gate_desc *g)
{
 unsigned long p = (unsigned long)&dt[entrynum];
 unsigned long start, end;

 preempt_disable();

 start = __get_cpu_var(idt_desc).address;
 end = start + __get_cpu_var(idt_desc).size + 1;

 xen_mc_flush();

 native_write_idt_entry(dt, entrynum, g);

 if (p >= start && (p + 8) <= end) {
  struct trap_info info[2];

  info[1].address = 0;

  if (cvt_gate_to_trap(entrynum, g, &info[0]))
   if (HYPERVISOR_set_trap_table(info))
    BUG();
 }

 preempt_enable();
}
