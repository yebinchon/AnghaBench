
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct desc_ptr {unsigned long address; scalar_t__ size; } ;
struct TYPE_4__ {int pgd; } ;
struct TYPE_3__ {int pgd; } ;


 scalar_t__ GDT_SIZE ;
 unsigned long X86_CR4_PAE ;
 int __flush_tlb_all () ;
 TYPE_2__* efi_bak_pg_dir_pointer ;
 int efi_rt_eflags ;
 scalar_t__ get_cpu_gdt_table (int ) ;
 int load_gdt (struct desc_ptr*) ;
 int local_irq_restore (int ) ;
 size_t pgd_index (int) ;
 unsigned long read_cr4_safe () ;
 TYPE_1__* swapper_pg_dir ;

void efi_call_phys_epilog(void)
{
 unsigned long cr4;
 struct desc_ptr gdt_descr;

 gdt_descr.address = (unsigned long)get_cpu_gdt_table(0);
 gdt_descr.size = GDT_SIZE - 1;
 load_gdt(&gdt_descr);

 cr4 = read_cr4_safe();

 if (cr4 & X86_CR4_PAE) {
  swapper_pg_dir[pgd_index(0)].pgd =
      efi_bak_pg_dir_pointer[0].pgd;
 } else {
  swapper_pg_dir[pgd_index(0)].pgd =
      efi_bak_pg_dir_pointer[0].pgd;
  swapper_pg_dir[pgd_index(0x400000)].pgd =
      efi_bak_pg_dir_pointer[1].pgd;
 }




 __flush_tlb_all();

 local_irq_restore(efi_rt_eflags);
}
