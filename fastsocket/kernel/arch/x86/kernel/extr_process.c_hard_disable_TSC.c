
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_CR4_TSD ;
 int read_cr4 () ;
 int write_cr4 (int) ;

__attribute__((used)) static void hard_disable_TSC(void)
{
 write_cr4(read_cr4() | X86_CR4_TSD);
}
