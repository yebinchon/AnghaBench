
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ath_common {scalar_t__ keymax; void* ah; } ;


 int AR_KEYTABLE_MAC0 (scalar_t__) ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 int AR_KEYTABLE_VALID ;
 int ENABLE_REGWRITE_BUFFER (void*) ;
 int REGWRITE_BUFFER_FLUSH (void*) ;
 int REG_WRITE (void*,int ,int) ;
 int ath_err (struct ath_common*,char*,scalar_t__) ;
 int get_unaligned_le16 (int const*) ;
 int get_unaligned_le32 (int const*) ;

__attribute__((used)) static bool ath_hw_keysetmac(struct ath_common *common,
        u16 entry, const u8 *mac)
{
 u32 macHi, macLo;
 u32 unicast_flag = AR_KEYTABLE_VALID;
 void *ah = common->ah;

 if (entry >= common->keymax) {
  ath_err(common, "keysetmac: keycache entry %u out of range\n",
   entry);
  return 0;
 }

 if (mac != ((void*)0)) {







  if (mac[0] & 0x01)
   unicast_flag = 0;

  macLo = get_unaligned_le32(mac);
  macHi = get_unaligned_le16(mac + 4);
  macLo >>= 1;
  macLo |= (macHi & 1) << 31;
  macHi >>= 1;
 } else {
  macLo = macHi = 0;
 }
 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_KEYTABLE_MAC0(entry), macLo);
 REG_WRITE(ah, AR_KEYTABLE_MAC1(entry), macHi | unicast_flag);

 REGWRITE_BUFFER_FLUSH(ah);

 return 1;
}
