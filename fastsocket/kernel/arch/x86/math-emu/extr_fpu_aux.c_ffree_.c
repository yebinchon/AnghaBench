
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_rm ;
 int FPU_settagi (int ,int ) ;
 int TAG_Empty ;

void ffree_(void)
{

 FPU_settagi(FPU_rm, TAG_Empty);
}
