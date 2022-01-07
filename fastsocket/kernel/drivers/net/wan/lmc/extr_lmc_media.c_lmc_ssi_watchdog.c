
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int lmc_softc_t ;


 int LMC_MII16_LED2 ;
 int lmc_led_off (int * const,int ) ;
 int lmc_led_on (int * const,int ) ;
 int lmc_mii_readreg (int * const,int ,int) ;

__attribute__((used)) static void lmc_ssi_watchdog(lmc_softc_t * const sc)
{
 u16 mii17 = lmc_mii_readreg(sc, 0, 17);
 if (((mii17 >> 3) & 7) == 7)
  lmc_led_off(sc, LMC_MII16_LED2);
 else
  lmc_led_on(sc, LMC_MII16_LED2);
}
