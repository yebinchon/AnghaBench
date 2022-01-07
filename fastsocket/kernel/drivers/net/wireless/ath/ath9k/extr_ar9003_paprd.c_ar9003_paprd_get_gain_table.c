
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int* paprd_gain_table_entries; int* paprd_gain_table_index; } ;


 int AR_PHY_TXGAIN_TABLE ;
 int PAPRD_GAIN_TABLE_ENTRIES ;
 int REG_READ (struct ath_hw*,int) ;

__attribute__((used)) static void ar9003_paprd_get_gain_table(struct ath_hw *ah)
{
 u32 *entry = ah->paprd_gain_table_entries;
 u8 *index = ah->paprd_gain_table_index;
 u32 reg = AR_PHY_TXGAIN_TABLE;
 int i;

 for (i = 0; i < PAPRD_GAIN_TABLE_ENTRIES; i++) {
  entry[i] = REG_READ(ah, reg);
  index[i] = (entry[i] >> 24) & 0xff;
  reg += 4;
 }
}
