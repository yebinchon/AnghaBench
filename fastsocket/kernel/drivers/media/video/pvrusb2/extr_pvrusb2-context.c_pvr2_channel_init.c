
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {struct pvr2_channel* mc_last; struct pvr2_channel* mc_first; int hdw; } ;
struct pvr2_channel {struct pvr2_channel* mc_next; struct pvr2_channel* mc_prev; struct pvr2_context* mc_head; int hdw; } ;


 int pvr2_context_enter (struct pvr2_context*) ;
 int pvr2_context_exit (struct pvr2_context*) ;

void pvr2_channel_init(struct pvr2_channel *cp,struct pvr2_context *mp)
{
 pvr2_context_enter(mp);
 cp->hdw = mp->hdw;
 cp->mc_head = mp;
 cp->mc_next = ((void*)0);
 cp->mc_prev = mp->mc_last;
 if (mp->mc_last) {
  mp->mc_last->mc_next = cp;
 } else {
  mp->mc_first = cp;
 }
 mp->mc_last = cp;
 pvr2_context_exit(mp);
}
