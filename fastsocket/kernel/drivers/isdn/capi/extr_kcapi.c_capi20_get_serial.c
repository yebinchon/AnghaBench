
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_ctr {scalar_t__ cardstate; int serial; } ;


 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 int CAPI_SERIAL_LEN ;
 scalar_t__ CARD_RUNNING ;
 int driver_serial ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int strlcpy (void*,int ,int ) ;

u16 capi20_get_serial(u32 contr, u8 *serial)
{
 struct capi_ctr *card;

 if (contr == 0) {
  strlcpy(serial, driver_serial, CAPI_SERIAL_LEN);
  return CAPI_NOERROR;
 }
 card = get_capi_ctr_by_nr(contr);
 if (!card || card->cardstate != CARD_RUNNING)
  return CAPI_REGNOTINSTALLED;

 strlcpy((void *) serial, card->serial, CAPI_SERIAL_LEN);
 return CAPI_NOERROR;
}
