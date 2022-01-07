
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_ctr {scalar_t__ cardstate; int manu; } ;


 int CAPI_MANUFACTURER_LEN ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 scalar_t__ CARD_RUNNING ;
 int capi_manufakturer ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int strlcpy (int *,int ,int ) ;

u16 capi20_get_manufacturer(u32 contr, u8 *buf)
{
 struct capi_ctr *card;

 if (contr == 0) {
  strlcpy(buf, capi_manufakturer, CAPI_MANUFACTURER_LEN);
  return CAPI_NOERROR;
 }
 card = get_capi_ctr_by_nr(contr);
 if (!card || card->cardstate != CARD_RUNNING)
  return CAPI_REGNOTINSTALLED;
 strlcpy(buf, card->manu, CAPI_MANUFACTURER_LEN);
 return CAPI_NOERROR;
}
