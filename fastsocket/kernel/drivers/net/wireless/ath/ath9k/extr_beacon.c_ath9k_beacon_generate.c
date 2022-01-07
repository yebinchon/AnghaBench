
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_12__ {TYPE_5__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_6__ control; } ;
struct TYPE_8__ {int timestamp; } ;
struct TYPE_9__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_hdr {int seq_ctrl; } ;
struct ath_vif {int tsf_adjust; struct ath_buf* av_bcbuf; } ;
struct ath_txq {int axq_depth; int axq_lock; } ;
struct TYPE_10__ {int seq_no; } ;
struct TYPE_7__ {struct ath_txq* cabq; } ;
struct ath_softc {int nvifs; int dev; TYPE_4__ tx; TYPE_1__ beacon; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath_buf {scalar_t__ bf_buf_addr; struct sk_buff* bf_mpdu; } ;
struct TYPE_11__ {int idx; } ;


 int BEACON ;
 int DMA_TO_DEVICE ;
 int IEEE80211_SCTL_FRAG ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int ath9k_beacon_setup (struct ath_softc*,struct ieee80211_vif*,struct ath_buf*,int ) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_tx_cabq (struct ieee80211_hw*,struct sk_buff*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_draintxq (struct ath_softc*,struct ath_txq*) ;
 int ath_err (struct ath_common*,char*) ;
 int cpu_to_le16 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ dma_map_single (int ,scalar_t__,int ,int ) ;
 int dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct sk_buff* ieee80211_get_buffered_bc (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct ath_buf *ath9k_beacon_generate(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_buf *bf;
 struct ath_vif *avp = (void *)vif->drv_priv;
 struct sk_buff *skb;
 struct ath_txq *cabq = sc->beacon.cabq;
 struct ieee80211_tx_info *info;
 struct ieee80211_mgmt *mgmt_hdr;
 int cabq_depth;

 if (avp->av_bcbuf == ((void*)0))
  return ((void*)0);

 bf = avp->av_bcbuf;
 skb = bf->bf_mpdu;
 if (skb) {
  dma_unmap_single(sc->dev, bf->bf_buf_addr,
     skb->len, DMA_TO_DEVICE);
  dev_kfree_skb_any(skb);
  bf->bf_buf_addr = 0;
  bf->bf_mpdu = ((void*)0);
 }

 skb = ieee80211_beacon_get(hw, vif);
 if (skb == ((void*)0))
  return ((void*)0);

 bf->bf_mpdu = skb;

 mgmt_hdr = (struct ieee80211_mgmt *)skb->data;
 mgmt_hdr->u.beacon.timestamp = avp->tsf_adjust;

 info = IEEE80211_SKB_CB(skb);
 if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ) {




  struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
  sc->tx.seq_no += 0x10;
  hdr->seq_ctrl &= cpu_to_le16(IEEE80211_SCTL_FRAG);
  hdr->seq_ctrl |= cpu_to_le16(sc->tx.seq_no);
 }

 bf->bf_buf_addr = dma_map_single(sc->dev, skb->data,
      skb->len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(sc->dev, bf->bf_buf_addr))) {
  dev_kfree_skb_any(skb);
  bf->bf_mpdu = ((void*)0);
  bf->bf_buf_addr = 0;
  ath_err(common, "dma_mapping_error on beaconing\n");
  return ((void*)0);
 }

 skb = ieee80211_get_buffered_bc(hw, vif);
 spin_lock_bh(&cabq->axq_lock);
 cabq_depth = cabq->axq_depth;
 spin_unlock_bh(&cabq->axq_lock);

 if (skb && cabq_depth) {
  if (sc->nvifs > 1) {
   ath_dbg(common, BEACON,
    "Flushing previous cabq traffic\n");
   ath_draintxq(sc, cabq);
  }
 }

 ath9k_beacon_setup(sc, vif, bf, info->control.rates[0].idx);

 while (skb) {
  ath9k_tx_cabq(hw, skb);
  skb = ieee80211_get_buffered_bc(hw, vif);
 }

 return bf;
}
