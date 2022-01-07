
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int (* readisac ) (struct IsdnCardState*,int ) ;} ;


 int IPACX_ISTA ;
 int bch_int (struct IsdnCardState*,int) ;
 int cic_int (struct IsdnCardState*) ;
 int dch_int (struct IsdnCardState*) ;
 int stub1 (struct IsdnCardState*,int ) ;

void
interrupt_ipacx(struct IsdnCardState *cs)
{
 u_char ista;

 while ((ista = cs->readisac(cs, IPACX_ISTA))) {



    if (ista &0x80) bch_int(cs, 0);
    if (ista &0x40) bch_int(cs, 1);

    if (ista &0x01) dch_int(cs);
    if (ista &0x10) cic_int(cs);
  }
}
