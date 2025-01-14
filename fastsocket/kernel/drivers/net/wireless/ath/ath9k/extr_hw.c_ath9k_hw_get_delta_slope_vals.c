
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int COEF_SCALE_S ;

void ath9k_hw_get_delta_slope_vals(struct ath_hw *ah, u32 coef_scaled,
       u32 *coef_mantissa, u32 *coef_exponent)
{
 u32 coef_exp, coef_man;

 for (coef_exp = 31; coef_exp > 0; coef_exp--)
  if ((coef_scaled >> coef_exp) & 0x1)
   break;

 coef_exp = 14 - (coef_exp - COEF_SCALE_S);

 coef_man = coef_scaled + (1 << (COEF_SCALE_S - coef_exp - 1));

 *coef_mantissa = coef_man >> (COEF_SCALE_S - coef_exp);
 *coef_exponent = coef_exp - 16;
}
