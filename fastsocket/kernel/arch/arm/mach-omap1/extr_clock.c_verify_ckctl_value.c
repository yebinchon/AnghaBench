
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int CKCTL_ARMDIV_OFFSET ;
 int CKCTL_DSPDIV_OFFSET ;
 int CKCTL_DSPMMUDIV_OFFSET ;
 int CKCTL_LCDDIV_OFFSET ;
 int CKCTL_PERDIV_OFFSET ;
 int CKCTL_TCDIV_OFFSET ;

__attribute__((used)) static __u16 verify_ckctl_value(__u16 newval)
{
 __u8 per_exp;
 __u8 lcd_exp;
 __u8 arm_exp;
 __u8 dsp_exp;
 __u8 tc_exp;
 __u8 dspmmu_exp;

 per_exp = (newval >> CKCTL_PERDIV_OFFSET) & 3;
 lcd_exp = (newval >> CKCTL_LCDDIV_OFFSET) & 3;
 arm_exp = (newval >> CKCTL_ARMDIV_OFFSET) & 3;
 dsp_exp = (newval >> CKCTL_DSPDIV_OFFSET) & 3;
 tc_exp = (newval >> CKCTL_TCDIV_OFFSET) & 3;
 dspmmu_exp = (newval >> CKCTL_DSPMMUDIV_OFFSET) & 3;

 if (dspmmu_exp < dsp_exp)
  dspmmu_exp = dsp_exp;
 if (dspmmu_exp > dsp_exp+1)
  dspmmu_exp = dsp_exp+1;
 if (tc_exp < arm_exp)
  tc_exp = arm_exp;
 if (tc_exp < dspmmu_exp)
  tc_exp = dspmmu_exp;
 if (tc_exp > lcd_exp)
  lcd_exp = tc_exp;
 if (tc_exp > per_exp)
  per_exp = tc_exp;

 newval &= 0xf000;
 newval |= per_exp << CKCTL_PERDIV_OFFSET;
 newval |= lcd_exp << CKCTL_LCDDIV_OFFSET;
 newval |= arm_exp << CKCTL_ARMDIV_OFFSET;
 newval |= dsp_exp << CKCTL_DSPDIV_OFFSET;
 newval |= tc_exp << CKCTL_TCDIV_OFFSET;
 newval |= dspmmu_exp << CKCTL_DSPMMUDIV_OFFSET;

 return newval;
}
