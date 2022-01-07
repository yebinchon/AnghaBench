
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int fixp_t ;


 int FRAC_N ;

__attribute__((used)) static inline fixp_t fixp_mult(fixp_t a, fixp_t b)
{
 return ((s32)(a*b))>>FRAC_N;
}
