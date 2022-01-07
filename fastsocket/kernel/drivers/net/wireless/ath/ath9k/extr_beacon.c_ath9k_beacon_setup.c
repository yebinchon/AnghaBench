
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_13__ {scalar_t__ use_short_preamble; } ;
struct ieee80211_vif {TYPE_5__ bss_conf; } ;
struct ieee80211_supported_band {TYPE_6__* bitrates; } ;
struct ath_tx_info {int flags; int is_first; int is_last; TYPE_8__* rates; int qcu; int * buf_len; int * buf_addr; int keytype; int keyix; int txpower; int type; scalar_t__ pkt_len; } ;
struct TYPE_15__ {int beaconq; } ;
struct ath_softc {TYPE_7__ beacon; struct ieee80211_supported_band* sbands; struct ath_hw* sc_ah; } ;
struct ath_hw {int txchainmask; } ;
struct ath_common {TYPE_4__* hw; } ;
struct ath_buf {int bf_desc; int bf_buf_addr; struct sk_buff* bf_mpdu; } ;
typedef int info ;
struct TYPE_16__ {int Tries; int ChSel; int Rate; } ;
struct TYPE_14__ {int hw_value_short; int hw_value; } ;
struct TYPE_10__ {TYPE_1__* chan; } ;
struct TYPE_11__ {TYPE_2__ chandef; } ;
struct TYPE_12__ {TYPE_3__ conf; } ;
struct TYPE_9__ {size_t band; } ;


 int ATH9K_KEY_TYPE_CLEAR ;
 int ATH9K_PKT_TYPE_BEACON ;
 int ATH9K_TXDESC_CLRDMASK ;
 int ATH9K_TXDESC_NOACK ;
 int ATH9K_TXKEYIX_INVALID ;
 scalar_t__ FCS_LEN ;
 int MAX_RATE_POWER ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_txdesc (struct ath_hw*,int ,struct ath_tx_info*) ;
 int ath_txchainmask_reduction (struct ath_softc*,int ,int ) ;
 int memset (struct ath_tx_info*,int ,int) ;
 int roundup (scalar_t__,int) ;

__attribute__((used)) static void ath9k_beacon_setup(struct ath_softc *sc, struct ieee80211_vif *vif,
        struct ath_buf *bf, int rateidx)
{
 struct sk_buff *skb = bf->bf_mpdu;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_tx_info info;
 struct ieee80211_supported_band *sband;
 u8 chainmask = ah->txchainmask;
 u8 rate = 0;

 sband = &sc->sbands[common->hw->conf.chandef.chan->band];
 rate = sband->bitrates[rateidx].hw_value;
 if (vif->bss_conf.use_short_preamble)
  rate |= sband->bitrates[rateidx].hw_value_short;

 memset(&info, 0, sizeof(info));
 info.pkt_len = skb->len + FCS_LEN;
 info.type = ATH9K_PKT_TYPE_BEACON;
 info.txpower = MAX_RATE_POWER;
 info.keyix = ATH9K_TXKEYIX_INVALID;
 info.keytype = ATH9K_KEY_TYPE_CLEAR;
 info.flags = ATH9K_TXDESC_NOACK | ATH9K_TXDESC_CLRDMASK;

 info.buf_addr[0] = bf->bf_buf_addr;
 info.buf_len[0] = roundup(skb->len, 4);

 info.is_first = 1;
 info.is_last = 1;

 info.qcu = sc->beacon.beaconq;

 info.rates[0].Tries = 1;
 info.rates[0].Rate = rate;
 info.rates[0].ChSel = ath_txchainmask_reduction(sc, chainmask, rate);

 ath9k_hw_set_txdesc(ah, bf->bf_desc, &info);
}
