
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct desc_ptr {scalar_t__ size; int address; } ;
struct TYPE_4__ {int pgd; } ;
struct TYPE_3__ {int pgd; } ;


 scalar_t__ GDT_SIZE ;
 int PAGE_OFFSET ;
 unsigned long X86_CR4_PAE ;
 int __flush_tlb_all () ;
 int __pa (int ) ;
 TYPE_2__* efi_bak_pg_dir_pointer ;
 int efi_rt_eflags ;
 int get_cpu_gdt_table (int ) ;
 int load_gdt (struct desc_ptr*) ;
 int local_irq_save (int ) ;
 size_t pgd_index (unsigned long) ;
 unsigned long read_cr4_safe () ;
 TYPE_1__* swapper_pg_dir ;

void efi_call_phys_prelog(void)
{
 unsigned long cr4;
 unsigned long temp;
 struct desc_ptr gdt_descr;

 local_irq_save(efi_rt_eflags);






 cr4 = read_cr4_safe();

 if (cr4 & X86_CR4_PAE) {
  efi_bak_pg_dir_pointer[0].pgd =
      swapper_pg_dir[pgd_index(0)].pgd;
  swapper_pg_dir[0].pgd =
      swapper_pg_dir[pgd_index(PAGE_OFFSET)].pgd;
 } else {
  efi_bak_pg_dir_pointer[0].pgd =
      swapper_pg_dir[pgd_index(0)].pgd;
  efi_bak_pg_dir_pointer[1].pgd =
      swapper_pg_dir[pgd_index(0x400000)].pgd;
  swapper_pg_dir[pgd_index(0)].pgd =
      swapper_pg_dir[pgd_index(PAGE_OFFSET)].pgd;
  temp = PAGE_OFFSET + 0x400000;
  swapper_pg_dir[pgd_index(0x400000)].pgd =
      swapper_pg_dir[pgd_index(temp)].pgd;
 }




 __flush_tlb_all();

 gdt_descr.address = __pa(get_cpu_gdt_table(0));
 gdt_descr.size = GDT_SIZE - 1;
 load_gdt(&gdt_descr);
}
