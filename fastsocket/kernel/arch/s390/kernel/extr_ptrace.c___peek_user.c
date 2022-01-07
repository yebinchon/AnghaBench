
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
struct TYPE_6__ {int mask; } ;
struct TYPE_8__ {int per_info; TYPE_2__ fp_regs; int orig_gpr2; int * acrs; TYPE_1__ psw; } ;
struct user {TYPE_3__ regs; } ;
struct TYPE_9__ {int per_info; int fp_regs; scalar_t__* acrs; } ;
struct task_struct {TYPE_4__ thread; } ;
typedef scalar_t__ addr_t ;
struct TYPE_10__ {scalar_t__ orig_gpr2; int psw; } ;


 int BITS_PER_LONG ;
 scalar_t__ FPC_VALID_MASK ;
 scalar_t__ PSW_MASK_PER ;
 TYPE_5__* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static unsigned long __peek_user(struct task_struct *child, addr_t addr)
{
 struct user *dummy = ((void*)0);
 addr_t offset, tmp;

 if (addr < (addr_t) &dummy->regs.acrs) {



  tmp = *(addr_t *)((addr_t) &task_pt_regs(child)->psw + addr);
  if (addr == (addr_t) &dummy->regs.psw.mask)

   tmp &= ~PSW_MASK_PER;

 } else if (addr < (addr_t) &dummy->regs.orig_gpr2) {



  offset = addr - (addr_t) &dummy->regs.acrs;
  tmp = *(addr_t *)((addr_t) &child->thread.acrs + offset);

 } else if (addr == (addr_t) &dummy->regs.orig_gpr2) {



  tmp = (addr_t) task_pt_regs(child)->orig_gpr2;

 } else if (addr < (addr_t) &dummy->regs.fp_regs) {




  tmp = 0;

 } else if (addr < (addr_t) (&dummy->regs.fp_regs + 1)) {



  offset = addr - (addr_t) &dummy->regs.fp_regs;
  tmp = *(addr_t *)((addr_t) &child->thread.fp_regs + offset);
  if (addr == (addr_t) &dummy->regs.fp_regs.fpc)
   tmp &= (unsigned long) FPC_VALID_MASK
    << (BITS_PER_LONG - 32);

 } else if (addr < (addr_t) (&dummy->regs.per_info + 1)) {



  offset = addr - (addr_t) &dummy->regs.per_info;
  tmp = *(addr_t *)((addr_t) &child->thread.per_info + offset);

 } else
  tmp = 0;

 return tmp;
}
