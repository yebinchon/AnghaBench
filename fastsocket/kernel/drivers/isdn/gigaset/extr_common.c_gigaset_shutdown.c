
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int flags; int waiting; int mutex; int waitqueue; int at_state; } ;


 int DEBUG_CMD ;
 int EV_SHUTDOWN ;
 int VALID_MINOR ;
 int cleanup_cs (struct cardstate*) ;
 int gig_dbg (int ,char*) ;
 int gigaset_add_event (struct cardstate*,int *,int ,int *,int ,int *) ;
 int gigaset_schedule_event (struct cardstate*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

int gigaset_shutdown(struct cardstate *cs)
{
 mutex_lock(&cs->mutex);

 if (!(cs->flags & VALID_MINOR)) {
  mutex_unlock(&cs->mutex);
  return -1;
 }

 cs->waiting = 1;

 if (!gigaset_add_event(cs, &cs->at_state, EV_SHUTDOWN, ((void*)0), 0, ((void*)0))) {

  goto exit;
 }

 gig_dbg(DEBUG_CMD, "scheduling SHUTDOWN");
 gigaset_schedule_event(cs);

 wait_event(cs->waitqueue, !cs->waiting);

 cleanup_cs(cs);

exit:
 mutex_unlock(&cs->mutex);
 return 0;
}
