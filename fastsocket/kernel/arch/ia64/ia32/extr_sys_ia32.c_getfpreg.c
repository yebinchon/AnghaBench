
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcr; int fsr; int fir; int fdr; } ;
struct task_struct {TYPE_1__ thread; } ;



__attribute__((used)) static void getfpreg(struct task_struct *task, int regno, int *val)
{
 switch (regno / sizeof(int)) {
 case 0:
  *val = task->thread.fcr & 0xffff;
  break;
 case 1:
  *val = task->thread.fsr & 0xffff;
  break;
 case 2:
  *val = (task->thread.fsr>>16) & 0xffff;
  break;
 case 3:
  *val = task->thread.fir;
  break;
 case 4:
  *val = (task->thread.fir>>32) & 0xffff;
  break;
 case 5:
  *val = task->thread.fdr;
  break;
 case 6:
  *val = (task->thread.fdr >> 32) & 0xffff;
  break;
 }
}
