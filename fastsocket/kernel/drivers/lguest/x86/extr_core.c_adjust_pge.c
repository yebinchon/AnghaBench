
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_CR4_PGE ;
 int read_cr4 () ;
 int write_cr4 (int) ;

__attribute__((used)) static void adjust_pge(void *on)
{
 if (on)
  write_cr4(read_cr4() | X86_CR4_PGE);
 else
  write_cr4(read_cr4() & ~X86_CR4_PGE);
}
