
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {TYPE_2__* stf; TYPE_3__* band; TYPE_1__* protection; } ;
struct TYPE_6__ {scalar_t__ gmode; } ;
struct TYPE_5__ {int ss_opmode; } ;
struct TYPE_4__ {scalar_t__ _g; } ;


 scalar_t__ BRCMS_PHY_11N_CAP (TYPE_3__*) ;
 int BRCM_RATE_11M ;
 int PHY_TXC1_BW_40MHZ_DUP ;
 int RSPEC_BW_MASK ;
 int RSPEC_BW_SHIFT ;
 int RSPEC_STF_MASK ;
 int RSPEC_STF_SHIFT ;
 int brcms_basic_rate (struct brcms_c_info*,int) ;
 int is_cck_rate (int) ;
 scalar_t__ is_ofdm_rate (int) ;
 scalar_t__ rspec_is40mhz (int) ;

u32
brcms_c_rspec_to_rts_rspec(struct brcms_c_info *wlc, u32 rspec,
      bool use_rspec, u16 mimo_ctlchbw)
{
 u32 rts_rspec = 0;

 if (use_rspec)

  rts_rspec = rspec;
 else if (wlc->band->gmode && wlc->protection->_g && !is_cck_rate(rspec))







  rts_rspec = brcms_basic_rate(wlc, BRCM_RATE_11M);
 else




  rts_rspec = brcms_basic_rate(wlc, rspec);

 if (BRCMS_PHY_11N_CAP(wlc->band)) {

  rts_rspec &= ~RSPEC_BW_MASK;





  if (rspec_is40mhz(rspec) && !is_cck_rate(rts_rspec))
   rts_rspec |= (PHY_TXC1_BW_40MHZ_DUP << RSPEC_BW_SHIFT);
  else
   rts_rspec |= (mimo_ctlchbw << RSPEC_BW_SHIFT);


  if (is_ofdm_rate(rts_rspec)) {
   rts_rspec &= ~RSPEC_STF_MASK;
   rts_rspec |= (wlc->stf->ss_opmode << RSPEC_STF_SHIFT);
  }
 }
 return rts_rspec;
}
