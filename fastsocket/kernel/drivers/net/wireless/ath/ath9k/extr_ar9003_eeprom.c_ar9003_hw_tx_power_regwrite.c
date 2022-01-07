
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int dummy; } ;


 size_t ALL_TARGET_HT20_0_8_16 ;
 size_t ALL_TARGET_HT20_12 ;
 size_t ALL_TARGET_HT20_13 ;
 size_t ALL_TARGET_HT20_14 ;
 size_t ALL_TARGET_HT20_15 ;
 size_t ALL_TARGET_HT20_1_3_9_11_17_19 ;
 size_t ALL_TARGET_HT20_20 ;
 size_t ALL_TARGET_HT20_21 ;
 size_t ALL_TARGET_HT20_22 ;
 size_t ALL_TARGET_HT20_23 ;
 size_t ALL_TARGET_HT20_4 ;
 size_t ALL_TARGET_HT20_5 ;
 size_t ALL_TARGET_HT20_6 ;
 size_t ALL_TARGET_HT20_7 ;
 size_t ALL_TARGET_HT40_0_8_16 ;
 size_t ALL_TARGET_HT40_12 ;
 size_t ALL_TARGET_HT40_13 ;
 size_t ALL_TARGET_HT40_14 ;
 size_t ALL_TARGET_HT40_15 ;
 size_t ALL_TARGET_HT40_1_3_9_11_17_19 ;
 size_t ALL_TARGET_HT40_20 ;
 size_t ALL_TARGET_HT40_21 ;
 size_t ALL_TARGET_HT40_22 ;
 size_t ALL_TARGET_HT40_23 ;
 size_t ALL_TARGET_HT40_4 ;
 size_t ALL_TARGET_HT40_5 ;
 size_t ALL_TARGET_HT40_6 ;
 size_t ALL_TARGET_HT40_7 ;
 size_t ALL_TARGET_LEGACY_11L ;
 size_t ALL_TARGET_LEGACY_11S ;
 size_t ALL_TARGET_LEGACY_1L_5L ;
 size_t ALL_TARGET_LEGACY_36 ;
 size_t ALL_TARGET_LEGACY_48 ;
 size_t ALL_TARGET_LEGACY_54 ;
 size_t ALL_TARGET_LEGACY_5S ;
 size_t ALL_TARGET_LEGACY_6_24 ;
 int AR_PHY_POWER_TX_RATE (int) ;
 int AR_PHY_TX_FORCED_GAIN ;
 int POW_SM (int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static int ar9003_hw_tx_power_regwrite(struct ath_hw *ah, u8 * pPwrArray)
{


 REG_WRITE(ah, AR_PHY_TX_FORCED_GAIN, 0);




 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(0),
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (0)));


 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(1),
    (((pPwrArray[ALL_TARGET_LEGACY_54]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_LEGACY_48]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_LEGACY_36]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (0)));




 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(2),
    (((pPwrArray[ALL_TARGET_LEGACY_1L_5L]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_LEGACY_1L_5L]) & 0x3f) << (16)) |

    (((pPwrArray[ALL_TARGET_LEGACY_1L_5L]) & 0x3f) << (0)));


 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(3),
    (((pPwrArray[ALL_TARGET_LEGACY_11S]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_LEGACY_11L]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_LEGACY_5S]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_LEGACY_1L_5L]) & 0x3f) << (0))
     );




 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(8),
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_LEGACY_1L_5L]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_LEGACY_6_24]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_LEGACY_1L_5L]) & 0x3f) << (0))
     );




 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(4),
    (((pPwrArray[ALL_TARGET_HT20_5]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT20_4]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT20_1_3_9_11_17_19]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT20_0_8_16]) & 0x3f) << (0))
     );


 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(5),
    (((pPwrArray[ALL_TARGET_HT20_13]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT20_12]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT20_7]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT20_6]) & 0x3f) << (0))
     );


 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(9),
    (((pPwrArray[ALL_TARGET_HT20_21]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT20_20]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT20_15]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT20_14]) & 0x3f) << (0))
     );




 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(10),
    (((pPwrArray[ALL_TARGET_HT40_23]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT40_22]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT20_23]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT20_22]) & 0x3f) << (0))
     );






 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(6),
    (((pPwrArray[ALL_TARGET_HT40_5]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT40_4]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT40_1_3_9_11_17_19]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT40_0_8_16]) & 0x3f) << (0))
     );


 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(7),
    (((pPwrArray[ALL_TARGET_HT40_13]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT40_12]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT40_7]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT40_6]) & 0x3f) << (0))
     );


 REG_WRITE(ah, AR_PHY_POWER_TX_RATE(11),
    (((pPwrArray[ALL_TARGET_HT40_21]) & 0x3f) << (24)) |
    (((pPwrArray[ALL_TARGET_HT40_20]) & 0x3f) << (16)) |
    (((pPwrArray[ALL_TARGET_HT40_15]) & 0x3f) << (8)) |
    (((pPwrArray[ALL_TARGET_HT40_14]) & 0x3f) << (0))
     );

 return 0;

}
