
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {scalar_t__ mstate; int waitqueue; scalar_t__ waiting; int cmd_result; scalar_t__ isdn_up; int mode; } ;


 int ENODEV ;
 int ISDN_STAT_STOP ;
 scalar_t__ MS_LOCKED ;
 scalar_t__ MS_UNINITIALIZED ;
 int M_UNKNOWN ;
 int gigaset_i4l_cmd (struct cardstate*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void finish_shutdown(struct cardstate *cs)
{
 if (cs->mstate != MS_LOCKED) {
  cs->mstate = MS_UNINITIALIZED;
  cs->mode = M_UNKNOWN;
 }


 if (cs->isdn_up) {
  cs->isdn_up = 0;
  gigaset_i4l_cmd(cs, ISDN_STAT_STOP);
 }



 cs->cmd_result = -ENODEV;
 cs->waiting = 0;
 wake_up(&cs->waitqueue);
}
