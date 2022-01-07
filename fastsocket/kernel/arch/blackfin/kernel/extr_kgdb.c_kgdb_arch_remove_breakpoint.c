
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREAK_INSTR_SIZE ;
 int bfin_probe_kernel_write (char*,char*,int ) ;

int kgdb_arch_remove_breakpoint(unsigned long addr, char *bundle)
{
 return bfin_probe_kernel_write((char *)addr, bundle, BREAK_INSTR_SIZE);
}
