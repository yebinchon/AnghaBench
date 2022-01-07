
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_tx_control {int txq; } ;
struct TYPE_2__ {int cabq; } ;
struct ath_softc {TYPE_1__ beacon; int sc_ah; } ;
struct ath_common {int dummy; } ;


 int XMIT ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 scalar_t__ ath_tx_start (struct ieee80211_hw*,struct sk_buff*,struct ath_tx_control*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int memset (struct ath_tx_control*,int ,int) ;

__attribute__((used)) static void ath9k_tx_cabq(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_tx_control txctl;

 memset(&txctl, 0, sizeof(struct ath_tx_control));
 txctl.txq = sc->beacon.cabq;

 ath_dbg(common, XMIT, "transmitting CABQ packet, skb: %p\n", skb);

 if (ath_tx_start(hw, skb, &txctl) != 0) {
  ath_dbg(common, XMIT, "CABQ TX failed\n");
  ieee80211_free_txskb(hw, skb);
 }
}
