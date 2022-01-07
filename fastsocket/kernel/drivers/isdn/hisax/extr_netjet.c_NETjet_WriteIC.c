
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int auxd; scalar_t__ isac; scalar_t__ auxa; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int byteout (scalar_t__,int) ;

void
NETjet_WriteIC(struct IsdnCardState *cs, u_char offset, u_char value)
{
 cs->hw.njet.auxd &= 0xfc;
 cs->hw.njet.auxd |= (offset>>4) & 3;
 byteout(cs->hw.njet.auxa, cs->hw.njet.auxd);
 byteout(cs->hw.njet.isac + ((offset & 0xf)<<2), value);
}
