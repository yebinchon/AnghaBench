
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fpscr; unsigned int* fp_regs; } ;
struct TYPE_4__ {TYPE_3__ hard; } ;
struct TYPE_5__ {TYPE_1__ fpu; } ;
struct task_struct {TYPE_2__ thread; } ;
struct pt_regs {int pc; int pr; int sr; unsigned long* regs; } ;


 int FPSCR_FPU_ERROR ;
 struct task_struct* current ;
 long long denormal_addd (long long,long long) ;
 unsigned int denormal_addf (unsigned int,unsigned int) ;
 long long denormal_muld (long long,long long) ;
 unsigned int denormal_mulf (unsigned int,unsigned int) ;
 int denormal_to_double (TYPE_3__*,unsigned short) ;

__attribute__((used)) static int
ieee_fpe_handler (struct pt_regs *regs)
{
 unsigned short insn = *(unsigned short *) regs->pc;
 unsigned short finsn;
 unsigned long nextpc;
 int nib[4] = {
  (insn >> 12) & 0xf,
  (insn >> 8) & 0xf,
  (insn >> 4) & 0xf,
  insn & 0xf};

 if (nib[0] == 0xb ||
     (nib[0] == 0x4 && nib[2] == 0x0 && nib[3] == 0xb))
  regs->pr = regs->pc + 4;
 if (nib[0] == 0xa || nib[0] == 0xb) {
  nextpc = regs->pc + 4 + ((short) ((insn & 0xfff) << 4) >> 3);
  finsn = *(unsigned short *) (regs->pc + 2);
 } else if (nib[0] == 0x8 && nib[1] == 0xd) {
  if (regs->sr & 1)
   nextpc = regs->pc + 4 + ((char) (insn & 0xff) << 1);
  else
   nextpc = regs->pc + 4;
  finsn = *(unsigned short *) (regs->pc + 2);
 } else if (nib[0] == 0x8 && nib[1] == 0xf) {
  if (regs->sr & 1)
   nextpc = regs->pc + 4;
  else
   nextpc = regs->pc + 4 + ((char) (insn & 0xff) << 1);
  finsn = *(unsigned short *) (regs->pc + 2);
 } else if (nib[0] == 0x4 && nib[3] == 0xb &&
   (nib[2] == 0x0 || nib[2] == 0x2)) {
  nextpc = regs->regs[nib[1]];
  finsn = *(unsigned short *) (regs->pc + 2);
 } else if (nib[0] == 0x0 && nib[3] == 0x3 &&
   (nib[2] == 0x0 || nib[2] == 0x2)) {
  nextpc = regs->pc + 4 + regs->regs[nib[1]];
  finsn = *(unsigned short *) (regs->pc + 2);
 } else if (insn == 0x000b) {
  nextpc = regs->pr;
  finsn = *(unsigned short *) (regs->pc + 2);
 } else {
  nextpc = regs->pc + 2;
  finsn = insn;
 }



 if ((finsn & 0xf1ff) == 0xf0ad) {
  struct task_struct *tsk = current;

  if ((tsk->thread.fpu.hard.fpscr & (1 << 17))) {

   denormal_to_double (&tsk->thread.fpu.hard,
         (finsn >> 8) & 0xf);
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 } else if ((finsn & 0xf00f) == 0xf002) {
  struct task_struct *tsk = current;
  int fpscr;
  int n, m, prec;
  unsigned int hx, hy;

  n = (finsn >> 8) & 0xf;
  m = (finsn >> 4) & 0xf;
  hx = tsk->thread.fpu.hard.fp_regs[n];
  hy = tsk->thread.fpu.hard.fp_regs[m];
  fpscr = tsk->thread.fpu.hard.fpscr;
  prec = fpscr & (1 << 19);

  if ((fpscr & (1 << 17))
       && (prec && ((hx & 0x7fffffff) < 0x00100000
       || (hy & 0x7fffffff) < 0x00100000))) {
   long long llx, lly;


   llx = ((long long) hx << 32)
          | tsk->thread.fpu.hard.fp_regs[n+1];
   lly = ((long long) hy << 32)
          | tsk->thread.fpu.hard.fp_regs[m+1];
   if ((hx & 0x7fffffff) >= 0x00100000)
    llx = denormal_muld(lly, llx);
   else
    llx = denormal_muld(llx, lly);
   tsk->thread.fpu.hard.fp_regs[n] = llx >> 32;
   tsk->thread.fpu.hard.fp_regs[n+1] = llx & 0xffffffff;
  } else if ((fpscr & (1 << 17))
       && (!prec && ((hx & 0x7fffffff) < 0x00800000
       || (hy & 0x7fffffff) < 0x00800000))) {

   if ((hx & 0x7fffffff) >= 0x00800000)
    hx = denormal_mulf(hy, hx);
   else
    hx = denormal_mulf(hx, hy);
   tsk->thread.fpu.hard.fp_regs[n] = hx;
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 } else if ((finsn & 0xf00e) == 0xf000) {
  struct task_struct *tsk = current;
  int fpscr;
  int n, m, prec;
  unsigned int hx, hy;

  n = (finsn >> 8) & 0xf;
  m = (finsn >> 4) & 0xf;
  hx = tsk->thread.fpu.hard.fp_regs[n];
  hy = tsk->thread.fpu.hard.fp_regs[m];
  fpscr = tsk->thread.fpu.hard.fpscr;
  prec = fpscr & (1 << 19);

  if ((fpscr & (1 << 17))
       && (prec && ((hx & 0x7fffffff) < 0x00100000
       || (hy & 0x7fffffff) < 0x00100000))) {
   long long llx, lly;


   llx = ((long long) hx << 32)
          | tsk->thread.fpu.hard.fp_regs[n+1];
   lly = ((long long) hy << 32)
          | tsk->thread.fpu.hard.fp_regs[m+1];
   if ((finsn & 0xf00f) == 0xf000)
    llx = denormal_addd(llx, lly);
   else
    llx = denormal_addd(llx, lly ^ (1LL << 63));
   tsk->thread.fpu.hard.fp_regs[n] = llx >> 32;
   tsk->thread.fpu.hard.fp_regs[n+1] = llx & 0xffffffff;
  } else if ((fpscr & (1 << 17))
       && (!prec && ((hx & 0x7fffffff) < 0x00800000
       || (hy & 0x7fffffff) < 0x00800000))) {

   if ((finsn & 0xf00f) == 0xf000)
    hx = denormal_addf(hx, hy);
   else
    hx = denormal_addf(hx, hy ^ 0x80000000);
   tsk->thread.fpu.hard.fp_regs[n] = hx;
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 }

 return 0;
}
