
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct brcms_phy {int tx_power_min; int hwpwr_txcur; int* tx_power_offset; TYPE_1__* sh; scalar_t__ hwpwrctrl; } ;
struct TYPE_2__ {int physhim; int clk; } ;


 int BRCM_BAND_ALL ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int MHF2 ;
 int MHF2_HWPWRCTL ;
 int M_OFDM_OFFSET ;
 int M_TXPWR_CUR ;
 int M_TXPWR_MAX ;
 int M_TXPWR_N ;
 int M_TXPWR_TARGET ;
 int NUM_TSSI_FRAMES ;
 int TXP_FIRST_OFDM ;
 int TXP_LAST_OFDM ;
 scalar_t__ roundup (int,int) ;
 int wlapi_bmac_mhf (int ,int ,int ,int ,int ) ;
 int wlapi_bmac_rate_shm_offset (int ,int const) ;
 int wlapi_bmac_write_shm (int ,int,int) ;

void wlc_phy_txpower_update_shm(struct brcms_phy *pi)
{
 int j;
 if (ISNPHY(pi))
  return;

 if (!pi->sh->clk)
  return;

 if (pi->hwpwrctrl) {
  u16 offset;

  wlapi_bmac_write_shm(pi->sh->physhim, M_TXPWR_MAX, 63);
  wlapi_bmac_write_shm(pi->sh->physhim, M_TXPWR_N,
         1 << NUM_TSSI_FRAMES);

  wlapi_bmac_write_shm(pi->sh->physhim, M_TXPWR_TARGET,
         pi->tx_power_min << NUM_TSSI_FRAMES);

  wlapi_bmac_write_shm(pi->sh->physhim, M_TXPWR_CUR,
         pi->hwpwr_txcur);

  for (j = TXP_FIRST_OFDM; j <= TXP_LAST_OFDM; j++) {
   const u8 ucode_ofdm_rates[] = {
    0x0c, 0x12, 0x18, 0x24, 0x30, 0x48, 0x60, 0x6c
   };
   offset = wlapi_bmac_rate_shm_offset(
    pi->sh->physhim,
    ucode_ofdm_rates[j - TXP_FIRST_OFDM]);
   wlapi_bmac_write_shm(pi->sh->physhim, offset + 6,
          pi->tx_power_offset[j]);
   wlapi_bmac_write_shm(pi->sh->physhim, offset + 14,
          -(pi->tx_power_offset[j] / 2));
  }

  wlapi_bmac_mhf(pi->sh->physhim, MHF2, MHF2_HWPWRCTL,
          MHF2_HWPWRCTL, BRCM_BAND_ALL);
 } else {
  int i;

  for (i = TXP_FIRST_OFDM; i <= TXP_LAST_OFDM; i++)
   pi->tx_power_offset[i] =
    (u8) roundup(pi->tx_power_offset[i], 8);
  wlapi_bmac_write_shm(pi->sh->physhim, M_OFDM_OFFSET,
         (u16)
         ((pi->tx_power_offset[TXP_FIRST_OFDM]
           + 7) >> 3));
 }
}
