
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int alloc_page (int ) ;
 int * cpu_gdt_table ;
 int ia32_boot_gdt ;
 int * ia32_shared_page ;
 int memcpy (int ,int ,int ) ;
 int page_address (int ) ;
 int panic (char*,int) ;
 int smp_processor_id () ;

void
ia32_gdt_init (void)
{
 int cpu = smp_processor_id();

 ia32_shared_page[cpu] = alloc_page(GFP_KERNEL);
 if (!ia32_shared_page[cpu])
  panic("failed to allocate ia32_shared_page[%d]\n", cpu);

 cpu_gdt_table[cpu] = page_address(ia32_shared_page[cpu]);


 memcpy(cpu_gdt_table[cpu], ia32_boot_gdt, PAGE_SIZE);
}
