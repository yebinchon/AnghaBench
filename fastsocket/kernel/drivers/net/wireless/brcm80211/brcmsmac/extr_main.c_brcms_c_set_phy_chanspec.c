
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_c_info {int band; TYPE_1__* stf; int cmi; int chanspec; } ;
struct TYPE_2__ {int ss_algo_channel; scalar_t__ ss_algosel_auto; } ;


 int BRCMS_TXPWR_MAX ;
 int brcms_c_channel_set_chanspec (int ,int ,int ) ;
 int brcms_c_stf_ss_algo_channel_get (struct brcms_c_info*,int *,int ) ;
 int brcms_c_stf_ss_update (struct brcms_c_info*,int ) ;

__attribute__((used)) static void brcms_c_set_phy_chanspec(struct brcms_c_info *wlc,
         u16 chanspec)
{

 wlc->chanspec = chanspec;


 brcms_c_channel_set_chanspec(wlc->cmi, chanspec, BRCMS_TXPWR_MAX);

 if (wlc->stf->ss_algosel_auto)
  brcms_c_stf_ss_algo_channel_get(wlc, &wlc->stf->ss_algo_channel,
         chanspec);

 brcms_c_stf_ss_update(wlc, wlc->band);
}
