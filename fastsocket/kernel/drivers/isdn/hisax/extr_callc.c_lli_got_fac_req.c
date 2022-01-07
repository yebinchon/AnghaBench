
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int state; } ;
struct TYPE_7__ {int phone; } ;
struct Channel {int dial_timer; TYPE_4__ fi; TYPE_1__ setup; } ;
struct TYPE_8__ {int* para; } ;
typedef TYPE_2__ capi_msg ;


 int EV_RESUME ;
 int EV_SUSPEND ;
 int FsmAddTimer (int *,int,int ,TYPE_2__*,int) ;
 int FsmDelTimer (int *,int) ;
 int FsmEvent (TYPE_4__*,int ,TYPE_2__*) ;
 int ST_NULL ;
 int strncpy (int ,int*,int) ;

__attribute__((used)) static void
lli_got_fac_req(struct Channel *chanp, capi_msg *cm) {
 if ((cm->para[0] != 3) || (cm->para[1] != 0))
  return;
 if (cm->para[2]<3)
  return;
 if (cm->para[4] != 0)
  return;
 switch(cm->para[3]) {
  case 4:
   strncpy(chanp->setup.phone, &cm->para[5], cm->para[5] +1);
   FsmEvent(&chanp->fi, EV_SUSPEND, cm);
   break;
  case 5:
   strncpy(chanp->setup.phone, &cm->para[5], cm->para[5] +1);
   if (chanp->fi.state == ST_NULL) {
    FsmEvent(&chanp->fi, EV_RESUME, cm);
   } else {
    FsmDelTimer(&chanp->dial_timer, 72);
    FsmAddTimer(&chanp->dial_timer, 80, EV_RESUME, cm, 73);
   }
   break;
 }
}
