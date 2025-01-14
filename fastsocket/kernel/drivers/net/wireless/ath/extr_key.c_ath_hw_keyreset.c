
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ath_common {scalar_t__ keymax; int crypt_caps; void* ah; } ;


 int AR_KEYTABLE_KEY0 (scalar_t__) ;
 int AR_KEYTABLE_KEY1 (scalar_t__) ;
 int AR_KEYTABLE_KEY2 (scalar_t__) ;
 int AR_KEYTABLE_KEY3 (scalar_t__) ;
 int AR_KEYTABLE_KEY4 (scalar_t__) ;
 int AR_KEYTABLE_MAC0 (scalar_t__) ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 int AR_KEYTABLE_TYPE (scalar_t__) ;
 int AR_KEYTABLE_TYPE_CLR ;
 scalar_t__ AR_KEYTABLE_TYPE_TKIP ;
 int ATH_CRYPT_CAP_MIC_COMBINED ;
 int ENABLE_REGWRITE_BUFFER (void*) ;
 int REGWRITE_BUFFER_FLUSH (void*) ;
 scalar_t__ REG_READ (void*,int ) ;
 int REG_WRITE (void*,int ,int ) ;
 int ath_err (struct ath_common*,char*,scalar_t__) ;

bool ath_hw_keyreset(struct ath_common *common, u16 entry)
{
 u32 keyType;
 void *ah = common->ah;

 if (entry >= common->keymax) {
  ath_err(common, "keyreset: keycache entry %u out of range\n",
   entry);
  return 0;
 }

 keyType = REG_READ(ah, AR_KEYTABLE_TYPE(entry));

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_KEYTABLE_KEY0(entry), 0);
 REG_WRITE(ah, AR_KEYTABLE_KEY1(entry), 0);
 REG_WRITE(ah, AR_KEYTABLE_KEY2(entry), 0);
 REG_WRITE(ah, AR_KEYTABLE_KEY3(entry), 0);
 REG_WRITE(ah, AR_KEYTABLE_KEY4(entry), 0);
 REG_WRITE(ah, AR_KEYTABLE_TYPE(entry), AR_KEYTABLE_TYPE_CLR);
 REG_WRITE(ah, AR_KEYTABLE_MAC0(entry), 0);
 REG_WRITE(ah, AR_KEYTABLE_MAC1(entry), 0);

 if (keyType == AR_KEYTABLE_TYPE_TKIP) {
  u16 micentry = entry + 64;

  REG_WRITE(ah, AR_KEYTABLE_KEY0(micentry), 0);
  REG_WRITE(ah, AR_KEYTABLE_KEY1(micentry), 0);
  REG_WRITE(ah, AR_KEYTABLE_KEY2(micentry), 0);
  REG_WRITE(ah, AR_KEYTABLE_KEY3(micentry), 0);
  if (common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED) {
   REG_WRITE(ah, AR_KEYTABLE_KEY4(micentry), 0);
   REG_WRITE(ah, AR_KEYTABLE_TYPE(micentry),
      AR_KEYTABLE_TYPE_CLR);
  }

 }

 REGWRITE_BUFFER_FLUSH(ah);

 return 1;
}
