
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t f1; size_t f2; int dfifosize; int* send; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {TYPE_2__ hw; } ;



__attribute__((used)) static int
GetFreeFifoBytes_D(struct IsdnCardState *cs)
{
 int s;

 if (cs->hw.hfcD.f1 == cs->hw.hfcD.f2)
  return (cs->hw.hfcD.dfifosize);
 s = cs->hw.hfcD.send[cs->hw.hfcD.f1] - cs->hw.hfcD.send[cs->hw.hfcD.f2];
 if (s <= 0)
  s += cs->hw.hfcD.dfifosize;
 s = cs->hw.hfcD.dfifosize - s;
 return (s);
}
