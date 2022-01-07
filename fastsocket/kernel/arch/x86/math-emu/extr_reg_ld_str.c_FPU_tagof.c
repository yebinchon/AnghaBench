
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sigh; int sigl; } ;
typedef TYPE_1__ FPU_REG ;


 int TAG_Special ;
 int TAG_Valid ;
 int TAG_Zero ;
 int exponent16 (TYPE_1__*) ;

int FPU_tagof(FPU_REG *ptr)
{
 int exp;

 exp = exponent16(ptr) & 0x7fff;
 if (exp == 0) {
  if (!(ptr->sigh | ptr->sigl)) {
   return TAG_Zero;
  }

  return TAG_Special;
 }

 if (exp == 0x7fff) {

  return TAG_Special;
 }

 if (!(ptr->sigh & 0x80000000)) {



  return TAG_Special;
 }

 return TAG_Valid;
}
