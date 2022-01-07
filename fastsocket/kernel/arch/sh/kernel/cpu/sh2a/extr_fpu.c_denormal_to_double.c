
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_hard_struct {unsigned long fpul; unsigned long* fp_regs; } ;



__attribute__((used)) static void
denormal_to_double (struct sh_fpu_hard_struct *fpu, int n)
{
 unsigned long du, dl;
 unsigned long x = fpu->fpul;
 int exp = 1023 - 126;

 if (x != 0 && (x & 0x7f800000) == 0) {
  du = (x & 0x80000000);
  while ((x & 0x00800000) == 0) {
   x <<= 1;
   exp--;
  }
  x &= 0x007fffff;
  du |= (exp << 20) | (x >> 3);
  dl = x << 29;

  fpu->fp_regs[n] = du;
  fpu->fp_regs[n+1] = dl;
 }
}
