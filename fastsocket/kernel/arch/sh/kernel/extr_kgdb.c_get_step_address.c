
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; int sr; int* regs; long pr; } ;
typedef int insn_size_t ;


 scalar_t__ OPCODE_BF (int ) ;
 scalar_t__ OPCODE_BFS (int ) ;
 scalar_t__ OPCODE_BRA (int ) ;
 scalar_t__ OPCODE_BRAF (int ) ;
 size_t OPCODE_BRAF_REG (int ) ;
 int OPCODE_BRA_DISP (int ) ;
 scalar_t__ OPCODE_BSR (int ) ;
 scalar_t__ OPCODE_BSRF (int ) ;
 size_t OPCODE_BSRF_REG (int ) ;
 int OPCODE_BSR_DISP (int ) ;
 scalar_t__ OPCODE_BT (int ) ;
 int OPCODE_BTF_DISP (int ) ;
 scalar_t__ OPCODE_BTS (int ) ;
 scalar_t__ OPCODE_JMP (int ) ;
 size_t OPCODE_JMP_REG (int ) ;
 scalar_t__ OPCODE_JSR (int ) ;
 size_t OPCODE_JSR_REG (int ) ;
 scalar_t__ OPCODE_RTE (int ) ;
 scalar_t__ OPCODE_RTS (int ) ;
 int SR_T_BIT_MASK ;
 int __raw_readw (int) ;
 int flush_icache_range (long,long) ;
 long instruction_size (int ) ;

__attribute__((used)) static short *get_step_address(struct pt_regs *linux_regs)
{
 insn_size_t op = __raw_readw(linux_regs->pc);
 long addr;


 if (OPCODE_BT(op)) {
  if (linux_regs->sr & SR_T_BIT_MASK)
   addr = linux_regs->pc + 4 + OPCODE_BTF_DISP(op);
  else
   addr = linux_regs->pc + 2;
 }


 else if (OPCODE_BTS(op)) {
  if (linux_regs->sr & SR_T_BIT_MASK)
   addr = linux_regs->pc + 4 + OPCODE_BTF_DISP(op);
  else
   addr = linux_regs->pc + 4;
 }


 else if (OPCODE_BF(op)) {
  if (!(linux_regs->sr & SR_T_BIT_MASK))
   addr = linux_regs->pc + 4 + OPCODE_BTF_DISP(op);
  else
   addr = linux_regs->pc + 2;
 }


 else if (OPCODE_BFS(op)) {
  if (!(linux_regs->sr & SR_T_BIT_MASK))
   addr = linux_regs->pc + 4 + OPCODE_BTF_DISP(op);
  else
   addr = linux_regs->pc + 4;
 }


 else if (OPCODE_BRA(op))
  addr = linux_regs->pc + 4 + OPCODE_BRA_DISP(op);


 else if (OPCODE_BRAF(op))
  addr = linux_regs->pc + 4
      + linux_regs->regs[OPCODE_BRAF_REG(op)];


 else if (OPCODE_BSR(op))
  addr = linux_regs->pc + 4 + OPCODE_BSR_DISP(op);


 else if (OPCODE_BSRF(op))
  addr = linux_regs->pc + 4
      + linux_regs->regs[OPCODE_BSRF_REG(op)];


 else if (OPCODE_JMP(op))
  addr = linux_regs->regs[OPCODE_JMP_REG(op)];


 else if (OPCODE_JSR(op))
  addr = linux_regs->regs[OPCODE_JSR_REG(op)];


 else if (OPCODE_RTS(op))
  addr = linux_regs->pr;


 else if (OPCODE_RTE(op))
  addr = linux_regs->regs[15];


 else
  addr = linux_regs->pc + instruction_size(op);

 flush_icache_range(addr, addr + instruction_size(op));
 return (short *)addr;
}
