
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int cable_type; int cardtype; } ;
struct TYPE_7__ {TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;


 int LMC_CTL_CARDTYPE_LMC1000 ;
 int LMC_GEP_SSI_TXCLOCK ;
 int LMC_MII17_SSI_CABLE_MASK ;
 int LMC_MII17_SSI_CABLE_SHIFT ;
 int lmc_gpio_mkoutput (TYPE_2__* const,int ) ;
 int lmc_mii_readreg (TYPE_2__* const,int ,int) ;

__attribute__((used)) static void lmc_ssi_init(lmc_softc_t * const sc)
{
 u16 mii17;
 int cable;

 sc->ictl.cardtype = LMC_CTL_CARDTYPE_LMC1000;

 mii17 = lmc_mii_readreg(sc, 0, 17);

 cable = (mii17 & LMC_MII17_SSI_CABLE_MASK) >> LMC_MII17_SSI_CABLE_SHIFT;
 sc->ictl.cable_type = cable;

 lmc_gpio_mkoutput(sc, LMC_GEP_SSI_TXCLOCK);
}
