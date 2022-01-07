
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sigh; scalar_t__ sigl; } ;
typedef TYPE_1__ FPU_REG ;


 scalar_t__ EXP_BIAS ;
 scalar_t__ EXP_OVER ;
 scalar_t__ exponent (TYPE_1__ const*) ;

int isNaN(FPU_REG const *ptr)
{
 return ((exponent(ptr) == EXP_BIAS + EXP_OVER)
  && !((ptr->sigh == 0x80000000) && (ptr->sigl == 0)));
}
