
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keepalive_onoff; } ;
struct TYPE_5__ {TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;
typedef int lmc_ctl_t ;


 int LMC_CTL_ON ;

__attribute__((used)) static void
lmc_set_protocol (lmc_softc_t * const sc, lmc_ctl_t * ctl)
{
 if (!ctl)
  sc->ictl.keepalive_onoff = LMC_CTL_ON;
}
