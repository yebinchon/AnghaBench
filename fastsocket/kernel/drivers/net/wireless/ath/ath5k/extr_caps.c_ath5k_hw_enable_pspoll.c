
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_STA_ID1 ;
 int AR5K_STA_ID1_DEFAULT_ANTENNA ;
 int AR5K_STA_ID1_NO_PSPOLL ;
 int EIO ;

int ath5k_hw_enable_pspoll(struct ath5k_hw *ah, u8 *bssid,
  u16 assoc_id)
{
 if (ah->ah_version == AR5K_AR5210) {
  AR5K_REG_DISABLE_BITS(ah, AR5K_STA_ID1,
   AR5K_STA_ID1_NO_PSPOLL | AR5K_STA_ID1_DEFAULT_ANTENNA);
  return 0;
 }

 return -EIO;
}
