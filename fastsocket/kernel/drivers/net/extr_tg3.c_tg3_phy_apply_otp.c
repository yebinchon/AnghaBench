
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int phy_otp; } ;


 int MII_TG3_DSP_AADJ1CH0 ;
 int MII_TG3_DSP_AADJ1CH3 ;
 int MII_TG3_DSP_AADJ1CH3_ADCCKADJ ;
 int MII_TG3_DSP_EXP75 ;
 int MII_TG3_DSP_EXP96 ;
 int MII_TG3_DSP_EXP97 ;
 int MII_TG3_DSP_TAP1 ;
 int MII_TG3_DSP_TAP1_AGCTGT_DFLT ;
 int TG3_OTP_10BTAMP_MASK ;
 int TG3_OTP_10BTAMP_SHIFT ;
 int TG3_OTP_AGCTGT_MASK ;
 int TG3_OTP_AGCTGT_SHIFT ;
 int TG3_OTP_HPFFLTR_MASK ;
 int TG3_OTP_HPFFLTR_SHIFT ;
 int TG3_OTP_HPFOVER_MASK ;
 int TG3_OTP_HPFOVER_SHIFT ;
 int TG3_OTP_LPFDIS_MASK ;
 int TG3_OTP_LPFDIS_SHIFT ;
 int TG3_OTP_RCOFF_MASK ;
 int TG3_OTP_RCOFF_SHIFT ;
 int TG3_OTP_ROFF_MASK ;
 int TG3_OTP_ROFF_SHIFT ;
 int TG3_OTP_VDAC_MASK ;
 int TG3_OTP_VDAC_SHIFT ;
 scalar_t__ tg3_phy_toggle_auxctl_smdsp (struct tg3*,int) ;
 int tg3_phydsp_write (struct tg3*,int ,int) ;

__attribute__((used)) static void tg3_phy_apply_otp(struct tg3 *tp)
{
 u32 otp, phy;

 if (!tp->phy_otp)
  return;

 otp = tp->phy_otp;

 if (tg3_phy_toggle_auxctl_smdsp(tp, 1))
  return;

 phy = ((otp & TG3_OTP_AGCTGT_MASK) >> TG3_OTP_AGCTGT_SHIFT);
 phy |= MII_TG3_DSP_TAP1_AGCTGT_DFLT;
 tg3_phydsp_write(tp, MII_TG3_DSP_TAP1, phy);

 phy = ((otp & TG3_OTP_HPFFLTR_MASK) >> TG3_OTP_HPFFLTR_SHIFT) |
       ((otp & TG3_OTP_HPFOVER_MASK) >> TG3_OTP_HPFOVER_SHIFT);
 tg3_phydsp_write(tp, MII_TG3_DSP_AADJ1CH0, phy);

 phy = ((otp & TG3_OTP_LPFDIS_MASK) >> TG3_OTP_LPFDIS_SHIFT);
 phy |= MII_TG3_DSP_AADJ1CH3_ADCCKADJ;
 tg3_phydsp_write(tp, MII_TG3_DSP_AADJ1CH3, phy);

 phy = ((otp & TG3_OTP_VDAC_MASK) >> TG3_OTP_VDAC_SHIFT);
 tg3_phydsp_write(tp, MII_TG3_DSP_EXP75, phy);

 phy = ((otp & TG3_OTP_10BTAMP_MASK) >> TG3_OTP_10BTAMP_SHIFT);
 tg3_phydsp_write(tp, MII_TG3_DSP_EXP96, phy);

 phy = ((otp & TG3_OTP_ROFF_MASK) >> TG3_OTP_ROFF_SHIFT) |
       ((otp & TG3_OTP_RCOFF_MASK) >> TG3_OTP_RCOFF_SHIFT);
 tg3_phydsp_write(tp, MII_TG3_DSP_EXP97, phy);

 tg3_phy_toggle_auxctl_smdsp(tp, 0);
}
