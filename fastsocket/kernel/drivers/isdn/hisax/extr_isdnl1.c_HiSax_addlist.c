
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PStack {struct PStack* next; } ;
struct IsdnCardState {struct PStack* stlist; } ;



void
HiSax_addlist(struct IsdnCardState *cs,
       struct PStack *st)
{
 st->next = cs->stlist;
 cs->stlist = st;
}
