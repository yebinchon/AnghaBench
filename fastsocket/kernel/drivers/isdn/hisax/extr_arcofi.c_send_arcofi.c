
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int* mon_tx; int arcofi_bc; int mocr; scalar_t__ mon_txp; int mon_txc; TYPE_1__* arcofi_list; } ;
struct TYPE_6__ {TYPE_2__ isac; } ;
struct IsdnCardState {TYPE_3__ dc; int (* writeisac ) (struct IsdnCardState*,int ,int) ;int (* readisac ) (struct IsdnCardState*,int ) ;} ;
struct TYPE_4__ {int msg; int len; } ;


 int ISAC_MOCR ;
 int ISAC_MOSR ;
 int ISAC_MOX1 ;
 int add_arcofi_timer (struct IsdnCardState*) ;
 int memcpy (int*,int ,int ) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ) ;
 int stub3 (struct IsdnCardState*,int ,int) ;
 int stub4 (struct IsdnCardState*,int ,int) ;

__attribute__((used)) static void
send_arcofi(struct IsdnCardState *cs) {
 u_char val;

 add_arcofi_timer(cs);
 cs->dc.isac.mon_txp = 0;
 cs->dc.isac.mon_txc = cs->dc.isac.arcofi_list->len;
 memcpy(cs->dc.isac.mon_tx, cs->dc.isac.arcofi_list->msg, cs->dc.isac.mon_txc);
 switch(cs->dc.isac.arcofi_bc) {
  case 0: break;
  case 1: cs->dc.isac.mon_tx[1] |= 0x40;
   break;
  default: break;
 }
 cs->dc.isac.mocr &= 0x0f;
 cs->dc.isac.mocr |= 0xa0;
 cs->writeisac(cs, ISAC_MOCR, cs->dc.isac.mocr);
 val = cs->readisac(cs, ISAC_MOSR);
 cs->writeisac(cs, ISAC_MOX1, cs->dc.isac.mon_tx[cs->dc.isac.mon_txp++]);
 cs->dc.isac.mocr |= 0x10;
 cs->writeisac(cs, ISAC_MOCR, cs->dc.isac.mocr);
}
