
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ cardstate; } ;


 int CAPI_MAXCONTR ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 scalar_t__ CARD_RUNNING ;
 TYPE_1__** capi_cards ;

u16 capi20_isinstalled(void)
{
 int i;
 for (i = 0; i < CAPI_MAXCONTR; i++) {
  if (capi_cards[i] && capi_cards[i]->cardstate == CARD_RUNNING)
   return CAPI_NOERROR;
 }
 return CAPI_REGNOTINSTALLED;
}
