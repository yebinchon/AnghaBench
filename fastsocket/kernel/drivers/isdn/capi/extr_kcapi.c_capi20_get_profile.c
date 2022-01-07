
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_profile {int ncontroller; } ;
struct capi_ctr {scalar_t__ cardstate; int profile; } ;


 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 scalar_t__ CARD_RUNNING ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int memcpy (void*,int *,int) ;
 int ncards ;

u16 capi20_get_profile(u32 contr, struct capi_profile *profp)
{
 struct capi_ctr *card;

 if (contr == 0) {
  profp->ncontroller = ncards;
  return CAPI_NOERROR;
 }
 card = get_capi_ctr_by_nr(contr);
 if (!card || card->cardstate != CARD_RUNNING)
  return CAPI_REGNOTINSTALLED;

 memcpy((void *) profp, &card->profile,
   sizeof(struct capi_profile));
 return CAPI_NOERROR;
}
