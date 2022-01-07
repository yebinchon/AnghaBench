
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ MFlag; } ;
struct TYPE_6__ {TYPE_1__ elsa; } ;
struct IsdnCardState {scalar_t__ typ; int (* cardmsg ) (struct IsdnCardState*,int ,int ) ;TYPE_2__ hw; } ;
struct Channel {int dummy; } ;
struct TYPE_7__ {int para; } ;
typedef TYPE_3__ capi_msg ;


 int CARD_AUX_IND ;
 scalar_t__ ISDN_CTYPE_ELSA ;
 scalar_t__ ISDN_CTYPE_ELSA_PCI ;
 scalar_t__ ISDN_CTYPE_ELSA_PNP ;
 int stub1 (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static void
lli_got_manufacturer(struct Channel *chanp, struct IsdnCardState *cs, capi_msg *cm) {
 if ((cs->typ == ISDN_CTYPE_ELSA) || (cs->typ == ISDN_CTYPE_ELSA_PNP) ||
  (cs->typ == ISDN_CTYPE_ELSA_PCI)) {
  if (cs->hw.elsa.MFlag) {
   cs->cardmsg(cs, CARD_AUX_IND, cm->para);
  }
 }
}
