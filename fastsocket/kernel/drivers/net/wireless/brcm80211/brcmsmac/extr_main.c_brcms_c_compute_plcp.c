
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct brcms_c_info {int dummy; } ;


 int brcms_c_compute_cck_plcp (struct brcms_c_info*,int ,int ,int *) ;
 int brcms_c_compute_mimo_plcp (int ,int ,int *) ;
 int brcms_c_compute_ofdm_plcp (int ,int ,int *) ;
 scalar_t__ is_mcs_rate (int ) ;
 scalar_t__ is_ofdm_rate (int ) ;

__attribute__((used)) static void
brcms_c_compute_plcp(struct brcms_c_info *wlc, u32 rspec,
       uint length, u8 *plcp)
{
 if (is_mcs_rate(rspec))
  brcms_c_compute_mimo_plcp(rspec, length, plcp);
 else if (is_ofdm_rate(rspec))
  brcms_c_compute_ofdm_plcp(rspec, length, plcp);
 else
  brcms_c_compute_cck_plcp(wlc, rspec, length, plcp);
}
