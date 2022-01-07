
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg_cpu {TYPE_1__* regs; } ;
typedef int insn ;
struct TYPE_2__ {int eip; } ;


 int __lgwrite (struct lg_cpu*,int ,int*,int) ;
 int guest_pa (struct lg_cpu*,int ) ;
 int guest_pagetable_clear_all (struct lg_cpu*) ;

__attribute__((used)) static void rewrite_hypercall(struct lg_cpu *cpu)
{





 u8 insn[3] = {0xcd, 0x1f, 0x90};

 __lgwrite(cpu, guest_pa(cpu, cpu->regs->eip), insn, sizeof(insn));






 guest_pagetable_clear_all(cpu);
}
