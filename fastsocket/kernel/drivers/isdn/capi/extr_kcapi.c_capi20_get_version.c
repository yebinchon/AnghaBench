
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_version {int dummy; } ;
struct capi_ctr {scalar_t__ cardstate; int version; } ;
typedef int capi_version ;


 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 scalar_t__ CARD_RUNNING ;
 struct capi_version driver_version ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int memcpy (void*,int *,int) ;

u16 capi20_get_version(u32 contr, struct capi_version *verp)
{
 struct capi_ctr *card;

 if (contr == 0) {
  *verp = driver_version;
  return CAPI_NOERROR;
 }
 card = get_capi_ctr_by_nr(contr);
 if (!card || card->cardstate != CARD_RUNNING)
  return CAPI_REGNOTINSTALLED;

 memcpy((void *) verp, &card->version, sizeof(capi_version));
 return CAPI_NOERROR;
}
