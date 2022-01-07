
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int DRm ;
 int DRn ;
 int FMOV_EXT (int) ;
 scalar_t__ FPSCR_SZ ;
 int FRm ;
 int FRn ;

__attribute__((used)) static int
fmov_reg_reg(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m,
      int n)
{
 if (FPSCR_SZ) {
  FMOV_EXT(m);
  FMOV_EXT(n);
  DRn = DRm;
 } else {
  FRn = FRm;
 }

 return 0;
}
