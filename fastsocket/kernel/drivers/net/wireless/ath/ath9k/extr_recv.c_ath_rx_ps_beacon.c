
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct ath_softc {int ps_flags; int sc_ah; } ;
struct ath_common {int dummy; } ;


 int PS ;
 int PS_BEACON_SYNC ;
 int PS_WAIT_FOR_BEACON ;
 int PS_WAIT_FOR_CAB ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_set_beacon (struct ath_softc*) ;
 scalar_t__ ath_beacon_dtim_pending_cab (struct sk_buff*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static void ath_rx_ps_beacon(struct ath_softc *sc, struct sk_buff *skb)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 if (skb->len < 24 + 8 + 2 + 2)
  return;

 sc->ps_flags &= ~PS_WAIT_FOR_BEACON;

 if (sc->ps_flags & PS_BEACON_SYNC) {
  sc->ps_flags &= ~PS_BEACON_SYNC;
  ath_dbg(common, PS,
   "Reconfigure beacon timers based on synchronized timestamp\n");
  ath9k_set_beacon(sc);
 }

 if (ath_beacon_dtim_pending_cab(skb)) {







  ath_dbg(common, PS,
   "Received DTIM beacon indicating buffered broadcast/multicast frame(s)\n");
  sc->ps_flags |= PS_WAIT_FOR_CAB | PS_WAIT_FOR_BEACON;
  return;
 }

 if (sc->ps_flags & PS_WAIT_FOR_CAB) {





  sc->ps_flags &= ~PS_WAIT_FOR_CAB;
  ath_dbg(common, PS, "PS wait for CAB frames timed out\n");
 }
}
