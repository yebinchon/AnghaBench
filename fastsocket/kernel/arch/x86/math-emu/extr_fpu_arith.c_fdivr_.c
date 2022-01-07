
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_div (int ,int ,int ) ;
 int FPU_rm ;
 int REV ;
 int clear_C1 () ;
 int control_word ;

void fdivr_(void)
{

 clear_C1();
 FPU_div(REV, FPU_rm, control_word);
}
