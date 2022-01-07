
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* lmc_media; int lmc_miireg16; } ;
typedef TYPE_2__ lmc_softc_t ;
struct TYPE_7__ {int (* set_crc_length ) (TYPE_2__* const,int ) ;int (* set_clock_source ) (TYPE_2__* const,int ) ;int (* set_link_status ) (TYPE_2__* const,int ) ;} ;


 int LMC_CTL_CLOCK_SOURCE_EXT ;
 int LMC_CTL_CRC_LENGTH_16 ;
 int LMC_LINK_DOWN ;
 int LMC_MII16_LED_ALL ;
 int stub1 (TYPE_2__* const,int ) ;
 int stub2 (TYPE_2__* const,int ) ;
 int stub3 (TYPE_2__* const,int ) ;

__attribute__((used)) static void
lmc_hssi_default (lmc_softc_t * const sc)
{
  sc->lmc_miireg16 = LMC_MII16_LED_ALL;

  sc->lmc_media->set_link_status (sc, LMC_LINK_DOWN);
  sc->lmc_media->set_clock_source (sc, LMC_CTL_CLOCK_SOURCE_EXT);
  sc->lmc_media->set_crc_length (sc, LMC_CTL_CRC_LENGTH_16);
}
