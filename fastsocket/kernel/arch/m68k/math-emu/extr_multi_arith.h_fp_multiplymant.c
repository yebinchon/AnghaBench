
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union fp_mant64 {int * m32; } ;
union fp_mant128 {int * m32; } ;
struct TYPE_2__ {int * m32; } ;
struct fp_ext {TYPE_1__ mant; } ;


 int fp_addx96 (union fp_mant128*,union fp_mant64) ;
 int fp_mul64 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void fp_multiplymant(union fp_mant128 *dest, struct fp_ext *src1,
       struct fp_ext *src2)
{
 union fp_mant64 temp;

 fp_mul64(dest->m32[0], dest->m32[1], src1->mant.m32[0], src2->mant.m32[0]);
 fp_mul64(dest->m32[2], dest->m32[3], src1->mant.m32[1], src2->mant.m32[1]);

 fp_mul64(temp.m32[0], temp.m32[1], src1->mant.m32[0], src2->mant.m32[1]);
 fp_addx96(dest, temp);

 fp_mul64(temp.m32[0], temp.m32[1], src1->mant.m32[1], src2->mant.m32[0]);
 fp_addx96(dest, temp);
}
