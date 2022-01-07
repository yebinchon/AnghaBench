
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int typ; int subtyp; } ;


 int probe_elsa_adr (unsigned int,int ) ;

__attribute__((used)) static unsigned int
probe_elsa(struct IsdnCardState *cs)
{
 int i;
 unsigned int CARD_portlist[] =
 {0x160, 0x170, 0x260, 0x360, 0};

 for (i = 0; CARD_portlist[i]; i++) {
  if ((cs->subtyp = probe_elsa_adr(CARD_portlist[i], cs->typ)))
   break;
 }
 return (CARD_portlist[i]);
}
