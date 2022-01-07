
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pt_regs {scalar_t__ nip; } ;
struct TYPE_2__ {int gdb_bpt_instr; } ;


 int SIGTRAP ;
 TYPE_1__ arch_kgdb_ops ;
 scalar_t__ kgdb_handle_exception (int ,int ,int ,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int kgdb_handle_breakpoint(struct pt_regs *regs)
{
 if (user_mode(regs))
  return 0;

 if (kgdb_handle_exception(0, SIGTRAP, 0, regs) != 0)
  return 0;

 if (*(u32 *) (regs->nip) == *(u32 *) (&arch_kgdb_ops.gdb_bpt_instr))
  regs->nip += 4;

 return 1;
}
