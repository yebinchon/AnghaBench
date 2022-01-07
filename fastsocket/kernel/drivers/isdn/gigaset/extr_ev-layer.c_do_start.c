
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {scalar_t__ mstate; int isdn_up; int waitqueue; scalar_t__ waiting; } ;


 int ISDN_STAT_RUN ;
 int MS_INIT ;
 scalar_t__ MS_LOCKED ;
 int gigaset_free_channels (struct cardstate*) ;
 int gigaset_i4l_cmd (struct cardstate*,int ) ;
 int schedule_init (struct cardstate*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void do_start(struct cardstate *cs)
{
 gigaset_free_channels(cs);

 if (cs->mstate != MS_LOCKED)
  schedule_init(cs, MS_INIT);

 cs->isdn_up = 1;
 gigaset_i4l_cmd(cs, ISDN_STAT_RUN);



 cs->waiting = 0;
 wake_up(&cs->waitqueue);
}
