
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int r16; int r17; void* ar_ssd; void* ar_csd; void* r29; void* r28; void* r27; void* r24; } ;


 void* load_desc (int) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

void
ia32_load_segment_descriptors (struct task_struct *task)
{
 struct pt_regs *regs = task_pt_regs(task);


 regs->r24 = load_desc(regs->r16 >> 16);
 regs->r27 = load_desc(regs->r16 >> 0);
 regs->r28 = load_desc(regs->r16 >> 32);
 regs->r29 = load_desc(regs->r16 >> 48);
 regs->ar_csd = load_desc(regs->r17 >> 0);
 regs->ar_ssd = load_desc(regs->r17 >> 16);
}
