
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_rm ;
 int FPU_sub (int ,int ,int ) ;
 int REV ;
 int clear_C1 () ;
 int control_word ;

void fsubr_(void)
{

 clear_C1();
 FPU_sub(REV, FPU_rm, control_word);
}
