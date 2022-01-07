
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {scalar_t__* rxlink; } ;
struct ath_softc {TYPE_1__ rx; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_desc {scalar_t__ ds_link; int ds_vdata; int ds_data; } ;
struct ath_common {int rx_bufsize; } ;
struct ath_buf {scalar_t__ bf_daddr; struct sk_buff* bf_mpdu; int bf_buf_addr; struct ath_desc* bf_desc; } ;


 int ATH_RXBUF_RESET (struct ath_buf*) ;
 int BUG_ON (int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_putrxbuf (struct ath_hw*,scalar_t__) ;
 int ath9k_hw_setuprxdesc (struct ath_hw*,struct ath_desc*,int ,int ) ;

__attribute__((used)) static void ath_rx_buf_link(struct ath_softc *sc, struct ath_buf *bf)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_desc *ds;
 struct sk_buff *skb;

 ATH_RXBUF_RESET(bf);

 ds = bf->bf_desc;
 ds->ds_link = 0;
 ds->ds_data = bf->bf_buf_addr;


 skb = bf->bf_mpdu;
 BUG_ON(skb == ((void*)0));
 ds->ds_vdata = skb->data;






 ath9k_hw_setuprxdesc(ah, ds,
        common->rx_bufsize,
        0);

 if (sc->rx.rxlink == ((void*)0))
  ath9k_hw_putrxbuf(ah, bf->bf_daddr);
 else
  *sc->rx.rxlink = bf->bf_daddr;

 sc->rx.rxlink = &ds->ds_link;
}
