
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_window32 {unsigned long* locals; unsigned long* ins; } ;
struct pt_regs {unsigned long* u_regs; unsigned long psr; unsigned long pc; unsigned long npc; unsigned long y; } ;


 int GDB_G1 ;
 int GDB_I0 ;
 int GDB_L0 ;
 size_t GDB_NPC ;
 size_t GDB_PC ;
 size_t GDB_PSR ;
 size_t GDB_Y ;
 unsigned long PSR_CWP ;
 size_t UREG_FP ;
 int UREG_G1 ;

void gdb_regs_to_pt_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 struct reg_window32 *win;
 int i;

 for (i = 0; i < 15; i++)
  regs->u_regs[UREG_G1 + i] = gdb_regs[GDB_G1 + i];




 if (regs->psr != gdb_regs[GDB_PSR]) {
  unsigned long cwp = regs->psr & PSR_CWP;

  regs->psr = (gdb_regs[GDB_PSR] & ~PSR_CWP) | cwp;
 }

 regs->pc = gdb_regs[GDB_PC];
 regs->npc = gdb_regs[GDB_NPC];
 regs->y = gdb_regs[GDB_Y];

 win = (struct reg_window32 *) regs->u_regs[UREG_FP];
 for (i = 0; i < 8; i++)
  win->locals[i] = gdb_regs[GDB_L0 + i];
 for (i = 0; i < 8; i++)
  win->ins[i] = gdb_regs[GDB_I0 + i];
}
