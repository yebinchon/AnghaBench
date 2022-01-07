
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct lcnphy_iq_est {int i_pwr; int q_pwr; int member_2; int member_1; int member_0; } ;
struct brcms_phy {int dummy; } ;


 int wlc_lcnphy_rx_iq_est (struct brcms_phy*,int,int,struct lcnphy_iq_est*) ;

__attribute__((used)) static u32 wlc_lcnphy_measure_digital_power(struct brcms_phy *pi, u16 nsamples)
{
 struct lcnphy_iq_est iq_est = { 0, 0, 0 };

 if (!wlc_lcnphy_rx_iq_est(pi, nsamples, 32, &iq_est))
  return 0;
 return (iq_est.i_pwr + iq_est.q_pwr) / nsamples;
}
