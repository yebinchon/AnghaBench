
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int FMOV_EXT (int) ;
 scalar_t__ FPSCR_SZ ;
 int FRm ;
 scalar_t__ R0 ;
 scalar_t__ Rn ;
 int WRITE (int ,scalar_t__) ;

__attribute__((used)) static int
fmov_reg_idx(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m,
      int n)
{
 if (FPSCR_SZ) {
  FMOV_EXT(m);
  WRITE(FRm, Rn + R0 + 4);
  m++;
  WRITE(FRm, Rn + R0);
 } else {
  WRITE(FRm, Rn + R0);
 }

 return 0;
}
