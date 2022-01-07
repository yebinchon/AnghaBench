
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int kthreads_assigned_limit; int number; int partid; int idle_wq; int kthreads_assigned; int kthreads_idle; } ;


 int DBUG_ON (int) ;
 int atomic_read (int *) ;
 int dev_dbg (int ,char*,int,int ,int ) ;
 int wake_up_nr (int *,int) ;
 int xpc_chan ;
 int xpc_create_kthreads (struct xpc_channel*,int,int ) ;

void
xpc_activate_kthreads(struct xpc_channel *ch, int needed)
{
 int idle = atomic_read(&ch->kthreads_idle);
 int assigned = atomic_read(&ch->kthreads_assigned);
 int wakeup;

 DBUG_ON(needed <= 0);

 if (idle > 0) {
  wakeup = (needed > idle) ? idle : needed;
  needed -= wakeup;

  dev_dbg(xpc_chan, "wakeup %d idle kthreads, partid=%d, "
   "channel=%d\n", wakeup, ch->partid, ch->number);


  wake_up_nr(&ch->idle_wq, wakeup);
 }

 if (needed <= 0)
  return;

 if (needed + assigned > ch->kthreads_assigned_limit) {
  needed = ch->kthreads_assigned_limit - assigned;
  if (needed <= 0)
   return;
 }

 dev_dbg(xpc_chan, "create %d new kthreads, partid=%d, channel=%d\n",
  needed, ch->partid, ch->number);

 xpc_create_kthreads(ch, needed, 0);
}
