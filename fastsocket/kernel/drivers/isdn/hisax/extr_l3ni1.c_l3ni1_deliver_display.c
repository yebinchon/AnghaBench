
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct l3_process {TYPE_4__* chan; TYPE_3__* st; } ;
struct TYPE_12__ {int (* statcallb ) (TYPE_6__*) ;} ;
struct IsdnCardState {TYPE_5__ iif; int myid; } ;
struct TYPE_8__ {char* display; } ;
struct TYPE_13__ {int arg; int driver; int command; TYPE_1__ parm; } ;
typedef TYPE_6__ isdn_ctrl ;
struct TYPE_11__ {int chan; } ;
struct TYPE_9__ {struct IsdnCardState* hardware; } ;
struct TYPE_10__ {TYPE_2__ l1; } ;


 int IE_DISPLAY ;
 int ISDN_STAT_DISPLAY ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static void
l3ni1_deliver_display(struct l3_process *pc, int pr, u_char *infp)
{ u_char len;
        isdn_ctrl ic;
 struct IsdnCardState *cs;
        char *p;

        if (*infp++ != IE_DISPLAY) return;
        if ((len = *infp++) > 80) return;
 if (!pc->chan) return;

 p = ic.parm.display;
        while (len--)
   *p++ = *infp++;
 *p = '\0';
 ic.command = ISDN_STAT_DISPLAY;
 cs = pc->st->l1.hardware;
 ic.driver = cs->myid;
 ic.arg = pc->chan->chan;
 cs->iif.statcallb(&ic);
}
