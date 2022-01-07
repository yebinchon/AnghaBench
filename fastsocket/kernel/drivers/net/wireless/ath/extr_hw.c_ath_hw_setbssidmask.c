
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_common {scalar_t__ bssidmask; scalar_t__ macaddr; void* ah; } ;


 int AR_BSSMSKL ;
 int AR_BSSMSKU ;
 int AR_STA_ID0 ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_SADH_MASK ;
 int REG_READ (void*,int ) ;
 int REG_WRITE (void*,int ,int) ;
 int get_unaligned_le16 (scalar_t__) ;
 int get_unaligned_le32 (scalar_t__) ;

void ath_hw_setbssidmask(struct ath_common *common)
{
 void *ah = common->ah;
 u32 id1;

 REG_WRITE(ah, AR_STA_ID0, get_unaligned_le32(common->macaddr));
 id1 = REG_READ(ah, AR_STA_ID1) & ~AR_STA_ID1_SADH_MASK;
 id1 |= get_unaligned_le16(common->macaddr + 4);
 REG_WRITE(ah, AR_STA_ID1, id1);

 REG_WRITE(ah, AR_BSSMSKL, get_unaligned_le32(common->bssidmask));
 REG_WRITE(ah, AR_BSSMSKU, get_unaligned_le16(common->bssidmask + 4));
}
