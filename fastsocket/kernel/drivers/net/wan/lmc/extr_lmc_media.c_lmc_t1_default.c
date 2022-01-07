
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int clock_source; } ;
struct TYPE_10__ {TYPE_2__ ictl; TYPE_1__* lmc_media; int lmc_miireg16; } ;
typedef TYPE_3__ lmc_softc_t ;
struct TYPE_8__ {int (* set_crc_length ) (TYPE_3__* const,int ) ;int (* set_circuit_type ) (TYPE_3__* const,int ) ;int (* set_link_status ) (TYPE_3__* const,int ) ;} ;


 int LMC_CTL_CIRCUIT_TYPE_T1 ;
 int LMC_CTL_CLOCK_SOURCE_INT ;
 int LMC_CTL_CRC_LENGTH_16 ;
 int LMC_LINK_DOWN ;
 int LMC_MII16_LED_ALL ;
 int stub1 (TYPE_3__* const,int ) ;
 int stub2 (TYPE_3__* const,int ) ;
 int stub3 (TYPE_3__* const,int ) ;

__attribute__((used)) static void
lmc_t1_default (lmc_softc_t * const sc)
{
  sc->lmc_miireg16 = LMC_MII16_LED_ALL;
  sc->lmc_media->set_link_status (sc, LMC_LINK_DOWN);
  sc->lmc_media->set_circuit_type (sc, LMC_CTL_CIRCUIT_TYPE_T1);
  sc->lmc_media->set_crc_length (sc, LMC_CTL_CRC_LENGTH_16);

  sc->ictl.clock_source = LMC_CTL_CLOCK_SOURCE_INT;
}
