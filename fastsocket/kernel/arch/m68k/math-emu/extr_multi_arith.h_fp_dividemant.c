
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union fp_mant64 {unsigned long* m32; } ;
union fp_mant128 {unsigned long* m32; } ;
struct TYPE_3__ {scalar_t__ m64; int* m32; } ;
struct fp_ext {TYPE_1__ mant; } ;


 int fp_add64 (unsigned long,unsigned long,int ,unsigned long) ;
 int fp_div64 (unsigned long,unsigned long,unsigned long,int,unsigned long) ;
 int fp_mul64 (unsigned long,unsigned long,unsigned long,unsigned long) ;
 int fp_sub64 (TYPE_1__,TYPE_1__) ;
 int fp_sub96c (union fp_mant128,int ,unsigned long,unsigned long) ;

__attribute__((used)) static inline void fp_dividemant(union fp_mant128 *dest, struct fp_ext *src,
     struct fp_ext *div)
{
 union fp_mant128 tmp;
 union fp_mant64 tmp64;
 unsigned long *mantp = dest->m32;
 unsigned long fix, rem, first, dummy;
 int i;



 if (src->mant.m64 >= div->mant.m64) {
  fp_sub64(src->mant, div->mant);
  *mantp = 1;
 } else
  *mantp = 0;
 mantp++;
 fix = 0x80000000;
 dummy = div->mant.m32[1] / div->mant.m32[0] + 1;
 dummy = (dummy >> 1) | fix;
 fp_div64(fix, dummy, fix, 0, dummy);
 fix--;

 for (i = 0; i < 3; i++, mantp++) {
  if (src->mant.m32[0] == div->mant.m32[0]) {
   fp_div64(first, rem, 0, src->mant.m32[1], div->mant.m32[0]);

   fp_mul64(*mantp, dummy, first, fix);
   *mantp += fix;
  } else {
   fp_div64(first, rem, src->mant.m32[0], src->mant.m32[1], div->mant.m32[0]);

   fp_mul64(*mantp, dummy, first, fix);
  }

  fp_mul64(tmp.m32[0], tmp.m32[1], div->mant.m32[0], first - *mantp);
  fp_add64(tmp.m32[0], tmp.m32[1], 0, rem);
  tmp.m32[2] = 0;

  fp_mul64(tmp64.m32[0], tmp64.m32[1], *mantp, div->mant.m32[1]);
  fp_sub96c(tmp, 0, tmp64.m32[0], tmp64.m32[1]);

  src->mant.m32[0] = tmp.m32[1];
  src->mant.m32[1] = tmp.m32[2];

  while (!fp_sub96c(tmp, 0, div->mant.m32[0], div->mant.m32[1])) {
   src->mant.m32[0] = tmp.m32[1];
   src->mant.m32[1] = tmp.m32[2];
   *mantp += 1;
  }
 }
}
