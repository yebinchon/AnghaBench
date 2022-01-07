
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcr; int fsr; int fir; int fdr; } ;
struct task_struct {TYPE_1__ thread; } ;


 int OFFSET (int ) ;
 int cwd ;
 int fip ;
 int foo ;
 int fop ;
 int min (int,int) ;
 int mxcsr ;
 int swd ;
 int twd ;

__attribute__((used)) static void setfpxreg(struct task_struct *task, int start, int end, char *buf)
{
 int min_val, num32;
 short num;
 unsigned long num64;

 min_val = min(end, OFFSET(fop));
 while (start < min_val) {
  num = *((short *)buf);
  if (start == OFFSET(cwd)) {
   task->thread.fcr = (task->thread.fcr & (~0x1f3f))
      | (num & 0x1f3f);
  } else if (start == OFFSET(swd)) {
   task->thread.fsr = (task->thread.fsr & (~0xffff)) | num;
  } else if (start == OFFSET(twd)) {
   task->thread.fsr = (task->thread.fsr & (~0xffff0000))
    | (((int)num) << 16);
  }
  buf += 2;
  start += 2;
 }

 if (start == OFFSET(fop)) {
  start += 2;
  buf += 2;
 }
 while (start < end) {
  num32 = *((int *)buf);
  if (start == OFFSET(fip))
   task->thread.fir = (task->thread.fir & (~0xffffffff))
       | num32;
  else if (start == OFFSET(foo))
   task->thread.fdr = (task->thread.fdr & (~0xffffffff))
       | num32;
  else if (start == OFFSET(mxcsr)) {
   num64 = num32 & 0xff10;
   task->thread.fcr = (task->thread.fcr &
    (~0xff1000000000UL)) | (num64<<32);
   num64 = num32 & 0x3f;
   task->thread.fsr = (task->thread.fsr &
    (~0x3f00000000UL)) | (num64<<32);
  }
  buf += 4;
  start += 4;
 }
}
