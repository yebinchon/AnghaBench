
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* txp_pd_table; } ;
struct ath5k_hw {TYPE_1__ ah_txpower; } ;


 int AR5K_EEPROM_POWER_TABLE_SIZE ;
 int AR5K_PHY_PCDAC_TXPOWER (int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

__attribute__((used)) static void
ath5k_write_pcdac_table(struct ath5k_hw *ah)
{
 u8 *pcdac_out = ah->ah_txpower.txp_pd_table;
 int i;




 for (i = 0; i < (AR5K_EEPROM_POWER_TABLE_SIZE / 2); i++) {
  ath5k_hw_reg_write(ah,
   (((pcdac_out[2 * i + 0] << 8 | 0xff) & 0xffff) << 0) |
   (((pcdac_out[2 * i + 1] << 8 | 0xff) & 0xffff) << 16),
   AR5K_PHY_PCDAC_TXPOWER(i));
 }
}
