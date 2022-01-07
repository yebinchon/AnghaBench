
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned long) ;

__attribute__((used)) static inline int print_insn_powerpc(unsigned long insn, unsigned long memaddr)
{
 printf("%.8x", insn);
 return 0;
}
