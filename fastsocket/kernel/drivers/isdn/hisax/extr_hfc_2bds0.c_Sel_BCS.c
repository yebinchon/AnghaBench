
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {struct BCState* bcs; } ;
struct BCState {int channel; scalar_t__ mode; } ;



__attribute__((used)) static
struct BCState *Sel_BCS(struct IsdnCardState *cs, int channel)
{
 if (cs->bcs[0].mode && (cs->bcs[0].channel == channel))
  return(&cs->bcs[0]);
 else if (cs->bcs[1].mode && (cs->bcs[1].channel == channel))
  return(&cs->bcs[1]);
 else
  return(((void*)0));
}
