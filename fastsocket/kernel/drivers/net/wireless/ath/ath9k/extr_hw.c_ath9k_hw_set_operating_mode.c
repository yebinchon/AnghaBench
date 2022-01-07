
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int is_monitoring; } ;


 int AR_CFG ;
 int AR_CFG_AP_ADHOC_INDICATION ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_ADHOC ;
 int AR_STA_ID1_KSRCH_MODE ;
 int AR_STA_ID1_STA_AP ;




 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW (struct ath_hw*,int ,int,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ath9k_hw_set_operating_mode(struct ath_hw *ah, int opmode)
{
 u32 mask = AR_STA_ID1_STA_AP | AR_STA_ID1_ADHOC;
 u32 set = AR_STA_ID1_KSRCH_MODE;

 switch (opmode) {
 case 131:
 case 129:
  set |= AR_STA_ID1_ADHOC;
  REG_SET_BIT(ah, AR_CFG, AR_CFG_AP_ADHOC_INDICATION);
  break;
 case 130:
  set |= AR_STA_ID1_STA_AP;

 case 128:
  REG_CLR_BIT(ah, AR_CFG, AR_CFG_AP_ADHOC_INDICATION);
  break;
 default:
  if (!ah->is_monitoring)
   set = 0;
  break;
 }
 REG_RMW(ah, AR_STA_ID1, set, mask);
}
