
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fpc; } ;
struct TYPE_6__ {int addr; int mask; } ;
struct TYPE_8__ {int per_info; TYPE_2__ fp_regs; int orig_gpr2; int * acrs; TYPE_1__ psw; } ;
struct user {TYPE_3__ regs; } ;
struct TYPE_9__ {unsigned int* acrs; int per_info; int fp_regs; } ;
struct task_struct {TYPE_4__ thread; } ;
typedef scalar_t__ addr_t ;
struct TYPE_10__ {scalar_t__ orig_gpr2; int psw; } ;


 int BITS_PER_LONG ;
 int EINVAL ;
 scalar_t__ FPC_VALID_MASK ;
 int FixPerRegisters (struct task_struct*) ;
 scalar_t__ PSW_ADDR_AMODE ;
 scalar_t__ PSW_MASK_MERGE (int ,scalar_t__) ;
 int psw_user32_bits ;
 int psw_user_bits ;
 TYPE_5__* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static int __poke_user(struct task_struct *child, addr_t addr, addr_t data)
{
 struct user *dummy = ((void*)0);
 addr_t offset;

 if (addr < (addr_t) &dummy->regs.acrs) {



  if (addr == (addr_t) &dummy->regs.psw.mask &&



      data != PSW_MASK_MERGE(psw_user_bits, data))

   return -EINVAL;

  if (addr == (addr_t) &dummy->regs.psw.addr)


   data |= PSW_ADDR_AMODE;

  *(addr_t *)((addr_t) &task_pt_regs(child)->psw + addr) = data;

 } else if (addr < (addr_t) (&dummy->regs.orig_gpr2)) {



  offset = addr - (addr_t) &dummy->regs.acrs;
  *(addr_t *)((addr_t) &child->thread.acrs + offset) = data;

 } else if (addr == (addr_t) &dummy->regs.orig_gpr2) {



  task_pt_regs(child)->orig_gpr2 = data;

 } else if (addr < (addr_t) &dummy->regs.fp_regs) {




  return 0;

 } else if (addr < (addr_t) (&dummy->regs.fp_regs + 1)) {



  if (addr == (addr_t) &dummy->regs.fp_regs.fpc &&
      (data & ~((unsigned long) FPC_VALID_MASK
         << (BITS_PER_LONG - 32))) != 0)
   return -EINVAL;
  offset = addr - (addr_t) &dummy->regs.fp_regs;
  *(addr_t *)((addr_t) &child->thread.fp_regs + offset) = data;

 } else if (addr < (addr_t) (&dummy->regs.per_info + 1)) {



  offset = addr - (addr_t) &dummy->regs.per_info;
  *(addr_t *)((addr_t) &child->thread.per_info + offset) = data;

 }

 FixPerRegisters(child);
 return 0;
}
