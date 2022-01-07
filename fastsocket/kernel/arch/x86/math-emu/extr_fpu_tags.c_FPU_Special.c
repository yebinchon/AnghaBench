
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sigh; scalar_t__ sigl; } ;
typedef TYPE_1__ FPU_REG ;


 int EXP_BIAS ;
 int EXP_OVER ;
 int EXP_UNDER ;
 int TW_Denormal ;
 int TW_Infinity ;
 int TW_NaN ;
 int exponent (TYPE_1__ const*) ;

int FPU_Special(FPU_REG const *ptr)
{
 int exp = exponent(ptr);

 if (exp == EXP_BIAS + EXP_UNDER)
  return TW_Denormal;
 else if (exp != EXP_BIAS + EXP_OVER)
  return TW_NaN;
 else if ((ptr->sigh == 0x80000000) && (ptr->sigl == 0))
  return TW_Infinity;
 return TW_NaN;
}
