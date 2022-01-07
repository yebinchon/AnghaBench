
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int auxd; int isac; int auxa; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int byteout (int ,int) ;
 int outsb (int ,int *,int) ;

void
NETjet_WriteICfifo(struct IsdnCardState *cs, u_char *data, int size)
{
 cs->hw.njet.auxd &= 0xfc;
 byteout(cs->hw.njet.auxa, cs->hw.njet.auxd);
 outsb(cs->hw.njet.isac, data, size);
}
