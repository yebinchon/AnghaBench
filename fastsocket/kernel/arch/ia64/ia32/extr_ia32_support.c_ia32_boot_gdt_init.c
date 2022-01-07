
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int IA32_GATE_END ;
 int IA32_LDT_ENTRIES ;
 int IA32_LDT_ENTRY_SIZE ;
 int IA32_LDT_OFFSET ;
 int IA32_PAGE_SHIFT ;
 int IA32_SEG_DESCRIPTOR (int ,unsigned long,int,int,int,int,int,int,int) ;
 int IA32_TSS_OFFSET ;
 size_t LDT_ENTRY ;
 unsigned long PAGE_ALIGN (int) ;
 size_t TSS_ENTRY ;
 int __USER_CS ;
 int __USER_DS ;
 int alloc_page (int ) ;
 int ** cpu_gdt_table ;
 int * ia32_boot_gdt ;
 int * ia32_shared_page ;
 int * page_address (int ) ;
 int panic (char*) ;

__attribute__((used)) static void
ia32_boot_gdt_init (void)
{
 unsigned long ldt_size;

 ia32_shared_page[0] = alloc_page(GFP_KERNEL);
 if (!ia32_shared_page[0])
  panic("failed to allocate ia32_shared_page[0]\n");

 ia32_boot_gdt = page_address(ia32_shared_page[0]);
 cpu_gdt_table[0] = ia32_boot_gdt;


 ia32_boot_gdt[__USER_CS >> 3]
  = IA32_SEG_DESCRIPTOR(0, (IA32_GATE_END-1) >> IA32_PAGE_SHIFT,
          0xb, 1, 3, 1, 1, 1, 1);


 ia32_boot_gdt[__USER_DS >> 3]
  = IA32_SEG_DESCRIPTOR(0, (IA32_GATE_END-1) >> IA32_PAGE_SHIFT,
          0x3, 1, 3, 1, 1, 1, 1);

 ldt_size = PAGE_ALIGN(IA32_LDT_ENTRIES*IA32_LDT_ENTRY_SIZE);
 ia32_boot_gdt[TSS_ENTRY] = IA32_SEG_DESCRIPTOR(IA32_TSS_OFFSET, 235,
             0xb, 0, 3, 1, 1, 1, 0);
 ia32_boot_gdt[LDT_ENTRY] = IA32_SEG_DESCRIPTOR(IA32_LDT_OFFSET, ldt_size - 1,
             0x2, 0, 3, 1, 1, 1, 0);
}
