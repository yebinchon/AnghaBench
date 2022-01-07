
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcr; int fsr; int fir; int fdr; } ;
struct task_struct {TYPE_1__ thread; } ;



__attribute__((used)) static void setfpreg(struct task_struct *task, int regno, int val)
{
 switch (regno / sizeof(int)) {
 case 0:
  task->thread.fcr = (task->thread.fcr & (~0x1f3f))
   | (val & 0x1f3f);
  break;
 case 1:
  task->thread.fsr = (task->thread.fsr & (~0xffff)) | val;
  break;
 case 2:
  task->thread.fsr = (task->thread.fsr & (~0xffff0000))
   | (val << 16);
  break;
 case 3:
  task->thread.fir = (task->thread.fir & (~0xffffffff)) | val;
  break;
 case 5:
  task->thread.fdr = (task->thread.fdr & (~0xffffffff)) | val;
  break;
 }
}
