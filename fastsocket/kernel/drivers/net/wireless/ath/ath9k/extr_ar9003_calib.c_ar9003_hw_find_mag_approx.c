
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ abs (scalar_t__) ;

__attribute__((used)) static s32 ar9003_hw_find_mag_approx(struct ath_hw *ah, s32 in_re, s32 in_im)
{
 s32 abs_i = abs(in_re),
     abs_q = abs(in_im),
     max_abs, min_abs;

 if (abs_i > abs_q) {
  max_abs = abs_i;
  min_abs = abs_q;
 } else {
  max_abs = abs_q;
  min_abs = abs_i;
 }

 return max_abs - (max_abs / 32) + (min_abs / 8) + (min_abs / 4);
}
