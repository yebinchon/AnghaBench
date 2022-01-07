
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* pub; TYPE_2__* band; } ;
struct ampdu_info {int* ini_enable; int mfbr; int tx_max_funl; int dur; int rr_retry_limit; int * rr_retry_limit_tid; int retry_limit; int * retry_limit_tid; int rx_factor; int ffpld_rsvd; int max_pdu; int mpdu_density; int ba_rx_wsize; int ba_tx_wsize; struct brcms_c_info* wlc; } ;
struct TYPE_4__ {int phyrev; } ;
struct TYPE_3__ {int _ampdu; } ;


 int AMPDU_DEF_FFPLD_RSVD ;
 int AMPDU_DEF_MPDU_DENSITY ;
 int AMPDU_DEF_RETRY_LIMIT ;
 int AMPDU_DEF_RR_RETRY_LIMIT ;
 int AMPDU_MAX_DUR ;
 int AMPDU_MAX_SCB_TID ;
 int AMPDU_RX_BA_DEF_WSIZE ;
 int AMPDU_TX_BA_DEF_WSIZE ;
 int AUTO ;
 scalar_t__ BRCMS_ISNPHY (TYPE_2__*) ;
 int FFPLD_TX_MAX_UNFL ;
 int GFP_ATOMIC ;
 int IEEE80211_HT_MAX_AMPDU_32K ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 scalar_t__ NREV_LT (int ,int) ;
 size_t PRIO_8021D_BK ;
 size_t PRIO_8021D_NC ;
 size_t PRIO_8021D_NONE ;
 size_t PRIO_8021D_VO ;
 int brcms_c_ampdu_set (struct ampdu_info*,int ) ;
 int brcms_c_ffpld_init (struct ampdu_info*) ;
 int brcms_c_scb_ampdu_update_max_txlen (struct ampdu_info*,int ) ;
 struct ampdu_info* kzalloc (int,int ) ;

struct ampdu_info *brcms_c_ampdu_attach(struct brcms_c_info *wlc)
{
 struct ampdu_info *ampdu;
 int i;

 ampdu = kzalloc(sizeof(struct ampdu_info), GFP_ATOMIC);
 if (!ampdu)
  return ((void*)0);

 ampdu->wlc = wlc;

 for (i = 0; i < AMPDU_MAX_SCB_TID; i++)
  ampdu->ini_enable[i] = 1;

 ampdu->ini_enable[PRIO_8021D_VO] = 0;
 ampdu->ini_enable[PRIO_8021D_NC] = 0;


 ampdu->ini_enable[PRIO_8021D_NONE] = 0;
 ampdu->ini_enable[PRIO_8021D_BK] = 0;

 ampdu->ba_tx_wsize = AMPDU_TX_BA_DEF_WSIZE;
 ampdu->ba_rx_wsize = AMPDU_RX_BA_DEF_WSIZE;
 ampdu->mpdu_density = AMPDU_DEF_MPDU_DENSITY;
 ampdu->max_pdu = AUTO;
 ampdu->dur = AMPDU_MAX_DUR;

 ampdu->ffpld_rsvd = AMPDU_DEF_FFPLD_RSVD;




 if (BRCMS_ISNPHY(wlc->band) && NREV_LT(wlc->band->phyrev, 2))
  ampdu->rx_factor = IEEE80211_HT_MAX_AMPDU_32K;
 else
  ampdu->rx_factor = IEEE80211_HT_MAX_AMPDU_64K;
 ampdu->retry_limit = AMPDU_DEF_RETRY_LIMIT;
 ampdu->rr_retry_limit = AMPDU_DEF_RR_RETRY_LIMIT;

 for (i = 0; i < AMPDU_MAX_SCB_TID; i++) {
  ampdu->retry_limit_tid[i] = ampdu->retry_limit;
  ampdu->rr_retry_limit_tid[i] = ampdu->rr_retry_limit;
 }

 brcms_c_scb_ampdu_update_max_txlen(ampdu, ampdu->dur);
 ampdu->mfbr = 0;

 brcms_c_ampdu_set(ampdu, wlc->pub->_ampdu);

 ampdu->tx_max_funl = FFPLD_TX_MAX_UNFL;
 brcms_c_ffpld_init(ampdu);

 return ampdu;
}
