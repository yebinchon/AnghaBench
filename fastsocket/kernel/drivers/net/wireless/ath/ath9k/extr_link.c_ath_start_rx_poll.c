
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int beacon_interval; } ;
struct ath_softc {TYPE_1__ cur_beacon_conf; int rx_poll_timer; int sc_flags; int sc_ah; } ;


 int AR_SREV_9300 (int ) ;
 int SC_OP_PRIM_STA_VIF ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int test_bit (int ,int *) ;

void ath_start_rx_poll(struct ath_softc *sc, u8 nbeacon)
{
 if (!AR_SREV_9300(sc->sc_ah))
  return;

 if (!test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags))
  return;

 mod_timer(&sc->rx_poll_timer, jiffies + msecs_to_jiffies
    (nbeacon * sc->cur_beacon_conf.beacon_interval));
}
