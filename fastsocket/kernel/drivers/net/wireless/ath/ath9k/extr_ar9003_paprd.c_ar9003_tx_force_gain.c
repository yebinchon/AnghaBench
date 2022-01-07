
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int* paprd_gain_table_entries; } ;


 int AR_PHY_TPC_1 ;
 int AR_PHY_TPC_1_FORCED_DAC_GAIN ;
 int AR_PHY_TPC_1_FORCE_DAC_GAIN ;
 int AR_PHY_TX_FORCED_GAIN ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_ENABLE_PAL ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNA ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNB ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNC ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGND ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_TXBB1DBGAIN ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_TXBB6DBGAIN ;
 int AR_PHY_TX_FORCED_GAIN_FORCED_TXMXRGAIN ;
 int AR_PHY_TX_FORCED_GAIN_FORCE_TX_GAIN ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;

__attribute__((used)) static void ar9003_tx_force_gain(struct ath_hw *ah, unsigned int gain_index)
{
 int selected_gain_entry, txbb1dbgain, txbb6dbgain, txmxrgain;
 int padrvgnA, padrvgnB, padrvgnC, padrvgnD;
 u32 *gain_table_entries = ah->paprd_gain_table_entries;

 selected_gain_entry = gain_table_entries[gain_index];
 txbb1dbgain = selected_gain_entry & 0x7;
 txbb6dbgain = (selected_gain_entry >> 3) & 0x3;
 txmxrgain = (selected_gain_entry >> 5) & 0xf;
 padrvgnA = (selected_gain_entry >> 9) & 0xf;
 padrvgnB = (selected_gain_entry >> 13) & 0xf;
 padrvgnC = (selected_gain_entry >> 17) & 0xf;
 padrvgnD = (selected_gain_entry >> 21) & 0x3;

 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_TXBB1DBGAIN, txbb1dbgain);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_TXBB6DBGAIN, txbb6dbgain);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_TXMXRGAIN, txmxrgain);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNA, padrvgnA);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNB, padrvgnB);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNC, padrvgnC);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGND, padrvgnD);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCED_ENABLE_PAL, 0);
 REG_RMW_FIELD(ah, AR_PHY_TX_FORCED_GAIN,
        AR_PHY_TX_FORCED_GAIN_FORCE_TX_GAIN, 0);
 REG_RMW_FIELD(ah, AR_PHY_TPC_1, AR_PHY_TPC_1_FORCED_DAC_GAIN, 0);
 REG_RMW_FIELD(ah, AR_PHY_TPC_1, AR_PHY_TPC_1_FORCE_DAC_GAIN, 0);
}
