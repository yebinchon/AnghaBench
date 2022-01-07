
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct IsdnCardState {scalar_t__ chanlimit; TYPE_2__ iif; int myid; } ;
struct TYPE_5__ {int* num; } ;
struct TYPE_7__ {int arg; TYPE_1__ parm; int command; int driver; } ;
typedef TYPE_3__ isdn_ctrl ;


 int EINVAL ;
 int ISDN_STAT_DISCH ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int
set_channel_limit(struct IsdnCardState *cs, int chanmax)
{
 isdn_ctrl ic;
 int i, ii;

 if ((chanmax < 0) || (chanmax > 2))
  return(-EINVAL);
 cs->chanlimit = 0;
 for (ii = 0; ii < 2; ii++) {
  ic.driver = cs->myid;
  ic.command = ISDN_STAT_DISCH;
  ic.arg = ii;
  if (ii >= chanmax)
   ic.parm.num[0] = 0;
  else
   ic.parm.num[0] = 1;
  i = cs->iif.statcallb(&ic);
  if (i) return(-EINVAL);
  if (ii < chanmax)
   cs->chanlimit++;
 }
 return(0);
}
