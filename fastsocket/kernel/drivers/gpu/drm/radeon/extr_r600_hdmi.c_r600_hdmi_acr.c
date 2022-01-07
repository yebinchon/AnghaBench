
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef size_t u8 ;
struct radeon_hdmi_acr {scalar_t__ clock; int n_48khz; int cts_48khz; int n_44_1khz; int cts_44_1khz; int n_32khz; int cts_32khz; } ;


 int r600_hdmi_calc_cts (scalar_t__,int *,int ,int) ;
 struct radeon_hdmi_acr* r600_hdmi_predefined_acr ;

struct radeon_hdmi_acr r600_hdmi_acr(uint32_t clock)
{
 struct radeon_hdmi_acr res;
 u8 i;

 for (i = 0; r600_hdmi_predefined_acr[i].clock != clock &&
      r600_hdmi_predefined_acr[i].clock != 0; i++)
  ;
 res = r600_hdmi_predefined_acr[i];


 r600_hdmi_calc_cts(clock, &res.cts_32khz, res.n_32khz, 32000);
 r600_hdmi_calc_cts(clock, &res.cts_44_1khz, res.n_44_1khz, 44100);
 r600_hdmi_calc_cts(clock, &res.cts_48khz, res.n_48khz, 48000);

 return res;
}
