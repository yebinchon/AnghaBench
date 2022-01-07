
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;


 int PSW_MASK_RI ;
 int current ;
 int load_runtime_instr_cb (int *) ;
 int runtime_instr_empty_cb ;
 struct pt_regs* task_pt_regs (int ) ;

__attribute__((used)) static void disable_runtime_instr(void)
{
 struct pt_regs *regs = task_pt_regs(current);

 load_runtime_instr_cb(&runtime_instr_empty_cb);






 regs->psw.mask &= ~PSW_MASK_RI;
}
