
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct ath_softc {int sc_flags; } ;
struct ath9k_channel {int dummy; } ;


 int EIO ;
 int SC_OP_INVALID ;
 int ath_reset_internal (struct ath_softc*,struct ath9k_channel*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath_set_channel(struct ath_softc *sc, struct ieee80211_hw *hw,
      struct ath9k_channel *hchan)
{
 int r;

 if (test_bit(SC_OP_INVALID, &sc->sc_flags))
  return -EIO;

 r = ath_reset_internal(sc, hchan);

 return r;
}
