
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long X86_CR4_OSXSAVE ;
 unsigned long X86_CR4_PGE ;
 unsigned long X86_CR4_PSE ;
 int native_write_cr4 (unsigned long) ;

__attribute__((used)) static void xen_write_cr4(unsigned long cr4)
{
 cr4 &= ~X86_CR4_PGE;
 cr4 &= ~X86_CR4_PSE;
 cr4 &= ~X86_CR4_OSXSAVE;

 native_write_cr4(cr4);
}
