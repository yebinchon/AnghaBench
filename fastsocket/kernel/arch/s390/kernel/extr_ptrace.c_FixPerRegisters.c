
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int per_info; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_6__ {int em_instruction_fetch; int ending_addr; int storage_alt_space_ctl; scalar_t__ em_storage_alteration; scalar_t__ starting_addr; } ;
struct TYPE_7__ {int suspension_ctl; int transaction_end; TYPE_2__ bits; } ;
struct TYPE_8__ {int single_step; int instruction_fetch; int ending_addr; TYPE_3__ control_regs; scalar_t__ starting_addr; } ;
typedef TYPE_4__ per_struct ;


 int PSW_ADDR_INSN ;
 struct task_struct* current ;
 scalar_t__ is_compat_task () ;
 int update_per_regs (struct task_struct*) ;

__attribute__((used)) static void FixPerRegisters(struct task_struct *task)
{
 per_struct *per_info;

 per_info = (per_struct *) &task->thread.per_info;
 per_info->control_regs.bits.em_instruction_fetch =
  per_info->single_step | per_info->instruction_fetch;

 if (per_info->single_step) {
  per_info->control_regs.bits.starting_addr = 0;





   per_info->control_regs.bits.ending_addr = PSW_ADDR_INSN;




 } else {
  per_info->control_regs.bits.starting_addr =
   per_info->starting_addr;
  per_info->control_regs.bits.ending_addr =
   per_info->ending_addr;
 }

 if (per_info->control_regs.bits.em_storage_alteration)
  per_info->control_regs.bits.storage_alt_space_ctl = 1;
 else
  per_info->control_regs.bits.storage_alt_space_ctl = 0;

 if (task == current)
  update_per_regs(task);
}
