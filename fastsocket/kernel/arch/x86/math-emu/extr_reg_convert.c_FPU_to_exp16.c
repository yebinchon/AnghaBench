
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int sigh; int sigl; } ;
typedef TYPE_1__ FPU_REG ;


 int EXCEPTION (int) ;
 scalar_t__ EXP_UNDER ;
 int EX_INTERNAL ;
 int FPU_normalize_nuo (TYPE_1__*) ;
 int addexponent (TYPE_1__*,int) ;
 int exponent (TYPE_1__ const*) ;
 scalar_t__ exponent16 (TYPE_1__*) ;
 int getsign (TYPE_1__ const*) ;
 int setexponent16 (TYPE_1__*,int ) ;

int FPU_to_exp16(FPU_REG const *a, FPU_REG *x)
{
 int sign = getsign(a);

 *(long long *)&(x->sigl) = *(const long long *)&(a->sigl);


 setexponent16(x, exponent(a));

 if (exponent16(x) == EXP_UNDER) {



  if (x->sigh & 0x80000000) {



   addexponent(x, 1);
  } else {

   addexponent(x, 1);
   FPU_normalize_nuo(x);
  }
 }

 if (!(x->sigh & 0x80000000)) {
  EXCEPTION(EX_INTERNAL | 0x180);
 }

 return sign;
}
