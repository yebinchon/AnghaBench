
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; } ;
struct TYPE_4__ {int rxbuf; int * rx_edma; } ;
struct ath_softc {TYPE_2__ rx; int dev; struct ath_hw* sc_ah; } ;
struct TYPE_3__ {int rx_hp_qdepth; int rx_lp_qdepth; scalar_t__ rx_status_len; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath_common {scalar_t__ rx_bufsize; } ;
struct ath_buf {int list; scalar_t__ bf_buf_addr; struct sk_buff* bf_mpdu; } ;


 size_t ATH9K_RX_QUEUE_HP ;
 size_t ATH9K_RX_QUEUE_LP ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_rx_bufsize (struct ath_hw*,scalar_t__) ;
 int ath_err (struct ath_common*,char*) ;
 int ath_rx_edma_cleanup (struct ath_softc*) ;
 int ath_rx_edma_init_queue (int *,int ) ;
 struct sk_buff* ath_rxbuf_alloc (struct ath_common*,scalar_t__,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct ath_buf* devm_kzalloc (int ,int,int ) ;
 scalar_t__ dma_map_single (int ,int ,scalar_t__,int ) ;
 int dma_mapping_error (int ,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int memset (int ,int ,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ath_rx_edma_init(struct ath_softc *sc, int nbufs)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_hw *ah = sc->sc_ah;
 struct sk_buff *skb;
 struct ath_buf *bf;
 int error = 0, i;
 u32 size;

 ath9k_hw_set_rx_bufsize(ah, common->rx_bufsize -
        ah->caps.rx_status_len);

 ath_rx_edma_init_queue(&sc->rx.rx_edma[ATH9K_RX_QUEUE_LP],
          ah->caps.rx_lp_qdepth);
 ath_rx_edma_init_queue(&sc->rx.rx_edma[ATH9K_RX_QUEUE_HP],
          ah->caps.rx_hp_qdepth);

 size = sizeof(struct ath_buf) * nbufs;
 bf = devm_kzalloc(sc->dev, size, GFP_KERNEL);
 if (!bf)
  return -ENOMEM;

 INIT_LIST_HEAD(&sc->rx.rxbuf);

 for (i = 0; i < nbufs; i++, bf++) {
  skb = ath_rxbuf_alloc(common, common->rx_bufsize, GFP_KERNEL);
  if (!skb) {
   error = -ENOMEM;
   goto rx_init_fail;
  }

  memset(skb->data, 0, common->rx_bufsize);
  bf->bf_mpdu = skb;

  bf->bf_buf_addr = dma_map_single(sc->dev, skb->data,
       common->rx_bufsize,
       DMA_BIDIRECTIONAL);
  if (unlikely(dma_mapping_error(sc->dev,
      bf->bf_buf_addr))) {
    dev_kfree_skb_any(skb);
    bf->bf_mpdu = ((void*)0);
    bf->bf_buf_addr = 0;
    ath_err(common,
     "dma_mapping_error() on RX init\n");
    error = -ENOMEM;
    goto rx_init_fail;
  }

  list_add_tail(&bf->list, &sc->rx.rxbuf);
 }

 return 0;

rx_init_fail:
 ath_rx_edma_cleanup(sc);
 return error;
}
