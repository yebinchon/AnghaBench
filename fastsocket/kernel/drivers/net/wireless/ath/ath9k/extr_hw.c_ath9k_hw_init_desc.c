
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {scalar_t__ ath_bus_type; } ;


 int AR_CFG ;
 int AR_CFG_SWRB ;
 int AR_CFG_SWRD ;
 int AR_CFG_SWRG ;
 int AR_CFG_SWTB ;
 int AR_CFG_SWTD ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ ATH_USB ;
 int INIT_CONFIG_STATUS ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_RMW (struct ath_hw*,int ,int,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int RESET ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;

__attribute__((used)) static void ath9k_hw_init_desc(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (AR_SREV_9100(ah)) {
  u32 mask;
  mask = REG_READ(ah, AR_CFG);
  if (mask & (AR_CFG_SWRB | AR_CFG_SWTB | AR_CFG_SWRG)) {
   ath_dbg(common, RESET, "CFG Byte Swap Set 0x%x\n",
    mask);
  } else {
   mask = INIT_CONFIG_STATUS | AR_CFG_SWRB | AR_CFG_SWTB;
   REG_WRITE(ah, AR_CFG, mask);
   ath_dbg(common, RESET, "Setting CFG 0x%x\n",
    REG_READ(ah, AR_CFG));
  }
 } else {
  if (common->bus_ops->ath_bus_type == ATH_USB) {

   if (AR_SREV_9271(ah))
    REG_WRITE(ah, AR_CFG, AR_CFG_SWRB | AR_CFG_SWTB);
   else
    REG_WRITE(ah, AR_CFG, AR_CFG_SWTD | AR_CFG_SWRD);
  }







 }
}
