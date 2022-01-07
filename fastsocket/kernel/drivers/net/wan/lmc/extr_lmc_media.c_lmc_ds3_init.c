
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cardtype; } ;
struct TYPE_7__ {TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;


 int LMC_CTL_CARDTYPE_LMC5245 ;
 int lmc_mii_readreg (TYPE_2__* const,int ,int) ;
 int lmc_mii_writereg (TYPE_2__* const,int ,int,int) ;

__attribute__((used)) static void
lmc_ds3_init (lmc_softc_t * const sc)
{
  int i;

  sc->ictl.cardtype = LMC_CTL_CARDTYPE_LMC5245;


  for (i = 0; i < 21; i++)
    {
      lmc_mii_writereg (sc, 0, 17, i);
      lmc_mii_writereg (sc, 0, 18, 0);
    }


  lmc_mii_writereg (sc, 0, 17, 1);
  lmc_mii_writereg (sc, 0, 18, 0x25);

  lmc_mii_writereg (sc, 0, 17, 5);
  lmc_mii_writereg (sc, 0, 18, 0x80);

  lmc_mii_writereg (sc, 0, 17, 14);
  lmc_mii_writereg (sc, 0, 18, 0x30);


  for (i = 0; i < 21; i++)
    {
      lmc_mii_writereg (sc, 0, 17, i);
      lmc_mii_readreg (sc, 0, 18);
    }
}
