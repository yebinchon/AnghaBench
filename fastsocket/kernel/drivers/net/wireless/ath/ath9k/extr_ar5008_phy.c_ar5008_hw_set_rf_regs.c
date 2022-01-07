
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int ia_rows; } ;
struct ath_hw {int * analogBank6Data; TYPE_1__* eep_ops; TYPE_2__ iniBank6; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_3__ {int (* get_eeprom ) (struct ath_hw*,int ) ;} ;


 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int EEP_DB_2 ;
 int EEP_DB_5 ;
 int EEP_MINOR_REV ;
 int EEP_OB_2 ;
 int EEP_OB_5 ;
 int INI_RA (TYPE_2__*,int,int) ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int REG_WRITE_ARRAY (int *,int,int) ;
 int ar5008_hw_phy_modify_rx_buffer (int *,int,int,int,int ) ;
 int ar5008_write_bank6 (struct ath_hw*,int*) ;
 int bank0 ;
 int bank1 ;
 int bank2 ;
 int bank3 ;
 int bank7 ;
 int stub1 (struct ath_hw*,int ) ;
 int stub2 (struct ath_hw*,int ) ;
 int stub3 (struct ath_hw*,int ) ;
 int stub4 (struct ath_hw*,int ) ;
 int stub5 (struct ath_hw*,int ) ;

__attribute__((used)) static bool ar5008_hw_set_rf_regs(struct ath_hw *ah,
      struct ath9k_channel *chan,
      u16 modesIndex)
{
 u32 eepMinorRev;
 u32 ob5GHz = 0, db5GHz = 0;
 u32 ob2GHz = 0, db2GHz = 0;
 int regWrites = 0;
 int i;






 if (AR_SREV_9280_20_OR_LATER(ah))
  return 1;


 eepMinorRev = ah->eep_ops->get_eeprom(ah, EEP_MINOR_REV);

 for (i = 0; i < ah->iniBank6.ia_rows; i++)
  ah->analogBank6Data[i] = INI_RA(&ah->iniBank6, i, modesIndex);


 if (eepMinorRev >= 2) {
  if (IS_CHAN_2GHZ(chan)) {
   ob2GHz = ah->eep_ops->get_eeprom(ah, EEP_OB_2);
   db2GHz = ah->eep_ops->get_eeprom(ah, EEP_DB_2);
   ar5008_hw_phy_modify_rx_buffer(ah->analogBank6Data,
             ob2GHz, 3, 197, 0);
   ar5008_hw_phy_modify_rx_buffer(ah->analogBank6Data,
             db2GHz, 3, 194, 0);
  } else {
   ob5GHz = ah->eep_ops->get_eeprom(ah, EEP_OB_5);
   db5GHz = ah->eep_ops->get_eeprom(ah, EEP_DB_5);
   ar5008_hw_phy_modify_rx_buffer(ah->analogBank6Data,
             ob5GHz, 3, 203, 0);
   ar5008_hw_phy_modify_rx_buffer(ah->analogBank6Data,
             db5GHz, 3, 200, 0);
  }
 }


 REG_WRITE_ARRAY(&bank0, 1, regWrites);
 REG_WRITE_ARRAY(&bank1, 1, regWrites);
 REG_WRITE_ARRAY(&bank2, 1, regWrites);
 REG_WRITE_ARRAY(&bank3, modesIndex, regWrites);
 ar5008_write_bank6(ah, &regWrites);
 REG_WRITE_ARRAY(&bank7, 1, regWrites);

 return 1;
}
