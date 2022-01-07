
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia32_boot_gdt_init () ;
 int ia32_gate_page_init () ;

void
ia32_mem_init(void)
{
 ia32_boot_gdt_init();
 ia32_gate_page_init();
}
