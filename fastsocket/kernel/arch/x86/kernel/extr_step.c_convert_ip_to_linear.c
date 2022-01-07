
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* mm; } ;
struct pt_regs {unsigned long ip; int cs; } ;
struct desc_struct {int d; } ;
struct TYPE_3__ {unsigned long size; int lock; struct desc_struct* ldt; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 unsigned long SEGMENT_LDT ;
 unsigned long SEGMENT_TI_MASK ;
 unsigned long get_desc_base (struct desc_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

unsigned long convert_ip_to_linear(struct task_struct *child, struct pt_regs *regs)
{
 unsigned long addr, seg;

 addr = regs->ip;
 seg = regs->cs & 0xffff;
 if (v8086_mode(regs)) {
  addr = (addr & 0xffff) + (seg << 4);
  return addr;
 }







 if ((seg & SEGMENT_TI_MASK) == SEGMENT_LDT) {
  struct desc_struct *desc;
  unsigned long base;

  seg &= ~7UL;

  mutex_lock(&child->mm->context.lock);
  if (unlikely((seg >> 3) >= child->mm->context.size))
   addr = -1L;
  else {
   desc = child->mm->context.ldt + seg;
   base = get_desc_base(desc);


   if (!desc->d)
    addr &= 0xffff;
   addr += base;
  }
  mutex_unlock(&child->mm->context.lock);
 }

 return addr;
}
