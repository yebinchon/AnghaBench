
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef size_t u8 ;
struct brcms_c_info {TYPE_2__* stf; TYPE_1__* band; int * bandstate; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {size_t txchain; size_t hw_txchain; size_t txstreams; int rxchain; int txant; } ;
struct TYPE_3__ {int pi; int band_stf_stbc_tx; } ;


 int ANT_TX_DEF ;
 int ANT_TX_FORCE_0 ;
 size_t BAND_2G_INDEX ;
 size_t BAND_5G_INDEX ;
 int EINVAL ;
 size_t MAX_STREAMS_SUPPORTED ;
 int _brcms_c_stf_phy_txant_upd (struct brcms_c_info*) ;
 int brcms_c_stf_ss_update (struct brcms_c_info*,int ) ;
 int brcms_c_stf_stbc_tx_set (struct brcms_c_info*,int ) ;
 int brcms_c_stf_txcore_set (struct brcms_c_info*,size_t,int ) ;
 scalar_t__ hweight8 (size_t) ;
 int * txcore_default ;
 int wlc_phy_stf_chain_set (int ,size_t,int ) ;

int brcms_c_stf_txchain_set(struct brcms_c_info *wlc, s32 int_val, bool force)
{
 u8 txchain = (u8) int_val;
 u8 txstreams;
 uint i;

 if (wlc->stf->txchain == txchain)
  return 0;

 if ((txchain & ~wlc->stf->hw_txchain)
     || !(txchain & wlc->stf->hw_txchain))
  return -EINVAL;





 txstreams = (u8) hweight8(txchain);
 if (txstreams > MAX_STREAMS_SUPPORTED)
  return -EINVAL;

 wlc->stf->txchain = txchain;
 wlc->stf->txstreams = txstreams;
 brcms_c_stf_stbc_tx_set(wlc, wlc->band->band_stf_stbc_tx);
 brcms_c_stf_ss_update(wlc, wlc->bandstate[BAND_2G_INDEX]);
 brcms_c_stf_ss_update(wlc, wlc->bandstate[BAND_5G_INDEX]);
 wlc->stf->txant =
     (wlc->stf->txstreams == 1) ? ANT_TX_FORCE_0 : ANT_TX_DEF;
 _brcms_c_stf_phy_txant_upd(wlc);

 wlc_phy_stf_chain_set(wlc->band->pi, wlc->stf->txchain,
         wlc->stf->rxchain);

 for (i = 1; i <= MAX_STREAMS_SUPPORTED; i++)
  brcms_c_stf_txcore_set(wlc, (u8) i, txcore_default[i]);

 return 0;
}
