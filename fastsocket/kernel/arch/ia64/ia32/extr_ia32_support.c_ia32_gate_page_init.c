
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int __IA32_NR_rt_sigreturn ;
 int __IA32_NR_sigreturn ;
 int alloc_page (int ) ;
 int ia32_gate_page ;
 unsigned long* page_address (int ) ;

__attribute__((used)) static void
ia32_gate_page_init(void)
{
 unsigned long *sr;

 ia32_gate_page = alloc_page(GFP_KERNEL);
 sr = page_address(ia32_gate_page);

 *sr++ = 0xb858 | (__IA32_NR_sigreturn << 16) | (0x80cdUL << 48);


 *sr = 0xb8 | (__IA32_NR_rt_sigreturn << 8) | (0x80cdUL << 40);
}
