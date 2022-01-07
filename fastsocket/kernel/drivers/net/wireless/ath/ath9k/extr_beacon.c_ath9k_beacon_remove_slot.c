
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_vif {size_t av_bslot; struct ath_buf* av_bcbuf; } ;
struct TYPE_2__ {int bbuf; int ** bslot; } ;
struct ath_softc {int bcon_tasklet; TYPE_1__ beacon; int nbcnvifs; int dev; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath_buf {int list; scalar_t__ bf_buf_addr; struct sk_buff* bf_mpdu; } ;


 int CONFIG ;
 int DMA_TO_DEVICE ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

void ath9k_beacon_remove_slot(struct ath_softc *sc, struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_vif *avp = (void *)vif->drv_priv;
 struct ath_buf *bf = avp->av_bcbuf;

 ath_dbg(common, CONFIG, "Removing interface at beacon slot: %d\n",
  avp->av_bslot);

 tasklet_disable(&sc->bcon_tasklet);

 if (bf && bf->bf_mpdu) {
  struct sk_buff *skb = bf->bf_mpdu;
  dma_unmap_single(sc->dev, bf->bf_buf_addr,
     skb->len, DMA_TO_DEVICE);
  dev_kfree_skb_any(skb);
  bf->bf_mpdu = ((void*)0);
  bf->bf_buf_addr = 0;
 }

 avp->av_bcbuf = ((void*)0);
 sc->beacon.bslot[avp->av_bslot] = ((void*)0);
 sc->nbcnvifs--;
 list_add_tail(&bf->list, &sc->beacon.bbuf);

 tasklet_enable(&sc->bcon_tasklet);
}
