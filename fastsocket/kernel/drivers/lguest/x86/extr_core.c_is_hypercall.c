
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg_cpu {TYPE_1__* regs; } ;
typedef int insn ;
struct TYPE_2__ {int cs; int eip; } ;


 int GUEST_PL ;
 int __lgread (struct lg_cpu*,int*,int ,int) ;
 int guest_pa (struct lg_cpu*,int ) ;

__attribute__((used)) static bool is_hypercall(struct lg_cpu *cpu)
{
 u8 insn[3];






 if ((cpu->regs->cs & 3) != GUEST_PL)
  return 0;


 __lgread(cpu, insn, guest_pa(cpu, cpu->regs->eip), sizeof(insn));
 return insn[0] == 0x0f && insn[1] == 0x01 && insn[2] == 0xc1;
}
