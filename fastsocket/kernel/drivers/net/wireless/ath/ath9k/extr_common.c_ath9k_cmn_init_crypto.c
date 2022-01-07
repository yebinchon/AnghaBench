
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath_hw {int misc_mode; } ;
struct ath_common {int keymax; int crypt_caps; } ;


 int AR_KEYTABLE_SIZE ;
 int AR_PCU_MIC_NEW_LOC_ENA ;
 int ATH_CRYPT_CAP_MIC_COMBINED ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_hw_keyreset (struct ath_common*,int ) ;

void ath9k_cmn_init_crypto(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int i = 0;


 common->keymax = AR_KEYTABLE_SIZE;







 if (ah->misc_mode & AR_PCU_MIC_NEW_LOC_ENA)
  common->crypt_caps |= ATH_CRYPT_CAP_MIC_COMBINED;





 for (i = 0; i < common->keymax; i++)
  ath_hw_keyreset(common, (u16) i);
}
