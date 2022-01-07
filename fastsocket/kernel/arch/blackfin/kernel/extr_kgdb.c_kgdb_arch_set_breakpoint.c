
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gdb_bpt_instr; } ;


 int BREAK_INSTR_SIZE ;
 TYPE_1__ arch_kgdb_ops ;
 int bfin_probe_kernel_read (char*,char*,int ) ;
 int bfin_probe_kernel_write (char*,int ,int ) ;

int kgdb_arch_set_breakpoint(unsigned long addr, char *saved_instr)
{
 int err = bfin_probe_kernel_read(saved_instr, (char *)addr,
                                  BREAK_INSTR_SIZE);
 if (err)
  return err;
 return bfin_probe_kernel_write((char *)addr, arch_kgdb_ops.gdb_bpt_instr,
                                BREAK_INSTR_SIZE);
}
