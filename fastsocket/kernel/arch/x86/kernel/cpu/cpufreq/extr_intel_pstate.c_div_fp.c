
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ int32_t ;


 int FRAC_BITS ;
 scalar_t__ div_s64 (int,int) ;

__attribute__((used)) static inline int32_t div_fp(int32_t x, int32_t y)
{
 return div_s64((int64_t)x << FRAC_BITS, (int64_t)y);
}
