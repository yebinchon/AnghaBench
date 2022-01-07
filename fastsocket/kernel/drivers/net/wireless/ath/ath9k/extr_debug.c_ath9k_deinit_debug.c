
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int * rfs_chan_spec_scan; } ;


 int CONFIG_ATH9K_DEBUGFS ;
 scalar_t__ config_enabled (int ) ;
 int relay_close (int *) ;

void ath9k_deinit_debug(struct ath_softc *sc)
{
 if (config_enabled(CONFIG_ATH9K_DEBUGFS) && sc->rfs_chan_spec_scan) {
  relay_close(sc->rfs_chan_spec_scan);
  sc->rfs_chan_spec_scan = ((void*)0);
 }
}
