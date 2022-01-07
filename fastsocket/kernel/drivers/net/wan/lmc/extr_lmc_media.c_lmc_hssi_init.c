
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cardtype; } ;
struct TYPE_6__ {TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;


 int LMC_CTL_CARDTYPE_LMC5200 ;
 int LMC_GEP_HSSI_CLOCK ;
 int lmc_gpio_mkoutput (TYPE_2__* const,int ) ;

__attribute__((used)) static void
lmc_hssi_init (lmc_softc_t * const sc)
{
  sc->ictl.cardtype = LMC_CTL_CARDTYPE_LMC5200;

  lmc_gpio_mkoutput (sc, LMC_GEP_HSSI_CLOCK);
}
