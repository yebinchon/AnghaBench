
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_illegal () ;
 int FPU_rm ;
 int compare_st_st (int) ;
 int poppop () ;

void fcompp(void)
{

 if (FPU_rm != 1) {
  FPU_illegal();
  return;
 }
 if (!compare_st_st(1))
  poppop();
}
