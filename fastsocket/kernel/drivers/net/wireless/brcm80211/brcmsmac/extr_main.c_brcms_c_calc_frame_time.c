
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct brcms_c_info {TYPE_3__* band; TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_6__ {scalar_t__ bandtype; } ;
struct TYPE_5__ {int unit; } ;
struct TYPE_4__ {int d11core; } ;


 int APHY_PREAMBLE_TIME ;
 int APHY_SERVICE_NBITS ;
 scalar_t__ APHY_SIGNAL_TIME ;
 int APHY_SYMBOL_TIME ;
 int APHY_TAIL_NBITS ;
 scalar_t__ BPHY_PLCP_SHORT_TIME ;
 scalar_t__ BPHY_PLCP_TIME ;
 int BRCMS_MM_PREAMBLE ;
 int BRCMS_SHORT_PREAMBLE ;
 scalar_t__ BRCM_BAND_2G ;
 int BRCM_RATE_1M ;
 int CEIL (int,int) ;
 scalar_t__ DOT11_OFDM_SIGNAL_EXTENSION ;
 scalar_t__ PREN_MM_EXT ;
 int PREN_PREAMBLE ;
 int PREN_PREAMBLE_EXT ;
 int RSPEC_RATE_MASK ;
 int brcms_err (int ,char*,int ) ;
 scalar_t__ is_mcs_rate (int) ;
 scalar_t__ is_ofdm_rate (int) ;
 int mcs_2_rate (int,int ,int ) ;
 int mcs_2_txstreams (int) ;
 int rspec2rate (int) ;
 int rspec_is40mhz (int) ;
 int rspec_issgi (int) ;
 int rspec_stc (int) ;

__attribute__((used)) static uint brcms_c_calc_frame_time(struct brcms_c_info *wlc, u32 ratespec,
        u8 preamble_type, uint mac_len)
{
 uint nsyms, dur = 0, Ndps, kNdps;
 uint rate = rspec2rate(ratespec);

 if (rate == 0) {
  brcms_err(wlc->hw->d11core, "wl%d: WAR: using rate of 1 mbps\n",
     wlc->pub->unit);
  rate = BRCM_RATE_1M;
 }

 if (is_mcs_rate(ratespec)) {
  uint mcs = ratespec & RSPEC_RATE_MASK;
  int tot_streams = mcs_2_txstreams(mcs) + rspec_stc(ratespec);

  dur = PREN_PREAMBLE + (tot_streams * PREN_PREAMBLE_EXT);
  if (preamble_type == BRCMS_MM_PREAMBLE)
   dur += PREN_MM_EXT;

  kNdps = mcs_2_rate(mcs, rspec_is40mhz(ratespec),
       rspec_issgi(ratespec)) * 4;

  if (rspec_stc(ratespec) == 0)
   nsyms =
       CEIL((APHY_SERVICE_NBITS + 8 * mac_len +
      APHY_TAIL_NBITS) * 1000, kNdps);
  else

   nsyms =
       2 *
       CEIL((APHY_SERVICE_NBITS + 8 * mac_len +
      APHY_TAIL_NBITS) * 1000, 2 * kNdps);

  dur += APHY_SYMBOL_TIME * nsyms;
  if (wlc->band->bandtype == BRCM_BAND_2G)
   dur += DOT11_OFDM_SIGNAL_EXTENSION;
 } else if (is_ofdm_rate(rate)) {
  dur = APHY_PREAMBLE_TIME;
  dur += APHY_SIGNAL_TIME;

  Ndps = rate * 2;

  nsyms =
      CEIL((APHY_SERVICE_NBITS + 8 * mac_len + APHY_TAIL_NBITS),
    Ndps);
  dur += APHY_SYMBOL_TIME * nsyms;
  if (wlc->band->bandtype == BRCM_BAND_2G)
   dur += DOT11_OFDM_SIGNAL_EXTENSION;
 } else {




  mac_len = mac_len * 8 * 2;

  dur = (mac_len + rate - 1) / rate;
  if (preamble_type & BRCMS_SHORT_PREAMBLE)
   dur += BPHY_PLCP_SHORT_TIME;
  else
   dur += BPHY_PLCP_TIME;
 }
 return dur;
}
