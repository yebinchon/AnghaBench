
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void __calc_pre_post_dividers(u32 div, u32 *pre, u32 *post)
{
 u32 min_pre, temp_pre, old_err, err;

 if (div >= 512) {
  *pre = 8;
  *post = 64;
 } else if (div >= 64) {
  min_pre = (div - 1) / 64 + 1;
  old_err = 8;
  for (temp_pre = 8; temp_pre >= min_pre; temp_pre--) {
   err = div % temp_pre;
   if (err == 0) {
    *pre = temp_pre;
    break;
   }
   err = temp_pre - err;
   if (err < old_err) {
    old_err = err;
    *pre = temp_pre;
   }
  }
  *post = (div + *pre - 1) / *pre;
 } else if (div <= 8) {
  *pre = div;
  *post = 1;
 } else {
  *pre = 1;
  *post = div;
 }
}
