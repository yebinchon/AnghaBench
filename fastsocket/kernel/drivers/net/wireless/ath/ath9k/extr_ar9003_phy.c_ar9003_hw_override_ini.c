
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_ADHOC_MCAST_KEYID_ENABLE ;
 int AR_AGG_WEP_ENABLE ;
 int AR_AGG_WEP_ENABLE_FIX ;
 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_PCU_MISC_MODE2 ;
 int AR_PHY_CCK_DETECT ;
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ar9003_hw_override_ini(struct ath_hw *ah)
{
 u32 val;






 REG_SET_BIT(ah, AR_DIAG_SW, (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
 val = REG_READ(ah, AR_PCU_MISC_MODE2) & (~AR_ADHOC_MCAST_KEYID_ENABLE);
 REG_WRITE(ah, AR_PCU_MISC_MODE2,
    val | AR_AGG_WEP_ENABLE_FIX | AR_AGG_WEP_ENABLE);

 REG_SET_BIT(ah, AR_PHY_CCK_DETECT,
      AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV);
}
