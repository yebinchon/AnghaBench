
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long windowstart; unsigned long windowbase; int wmask; int* areg; } ;


 int XCHAL_NUM_AREGS ;
 scalar_t__ __get_user (unsigned long,int*) ;
 scalar_t__ copy_to_user (void*,int*,int) ;

int
flush_window_regs_user(struct pt_regs *regs)
{
 const unsigned long ws = regs->windowstart;
 const unsigned long wb = regs->windowbase;
 unsigned long sp = 0;
 unsigned long wm;
 int err = 1;
 int base;



 if (regs->wmask == 1)
  return 0;



 wm = (ws >> wb) | (ws << (XCHAL_NUM_AREGS / 4 - wb));
 base = (XCHAL_NUM_AREGS / 4) - (regs->wmask >> 4);



 if ((regs->wmask & 2) == 0)
  if (__get_user(sp, (int*)(regs->areg[base * 4 + 1] - 12)))
   goto errout;



 while (base < XCHAL_NUM_AREGS / 4) {

  int m = (wm >> base);
  int inc = 0;



  if (m & 2) {
   inc = 1;

  } else if (m & 4) {
   if (copy_to_user((void*)(sp - 32),
        &regs->areg[(base + 1) * 4], 16))
    goto errout;
   inc = 2;

  } else if (m & 8) {
   if (copy_to_user((void*)(sp - 48),
        &regs->areg[(base + 1) * 4], 32))
    goto errout;
   inc = 3;
  }



  sp = regs->areg[((base + inc) * 4 + 1) % XCHAL_NUM_AREGS];
  if (copy_to_user((void*)(sp - 16), &regs->areg[base * 4], 16))
   goto errout;



  sp = regs->areg[base * 4 + 1];
  base += inc;
 }

 regs->wmask = 1;
 regs->windowstart = 1 << wb;

 return 0;

errout:
 return err;
}
