
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inbuf_t {int dummy; } ;
struct gigaset_driver {int dummy; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct cardstate {int channels; int onechannel; int ignoreframes; int running; int gotfwver; int cidmode; TYPE_2__ timer; int lock; scalar_t__ cs_init; TYPE_1__* ops; scalar_t__ cmdbytes; scalar_t__ curlen; int cmdlock; int * lastcmdbuf; int cmdbuf; scalar_t__ isdn_up; scalar_t__ connected; void* inbuf; int * bcs; scalar_t__ cbytes; scalar_t__ dle; int at_state; int mstate; int mode; scalar_t__ waiting; int waitqueue; int tabcid; int tabnocid; int * tty_dev; int * tty; int * dev; scalar_t__ open_count; scalar_t__ cur_at_seq; scalar_t__ commands_pending; int event_tasklet; scalar_t__ ev_head; scalar_t__ ev_tail; int ev_lock; int temp_at_states; } ;
struct bc_state {int dummy; } ;
struct TYPE_5__ {int (* initcshw ) (struct cardstate*) ;} ;


 int DEBUG_INIT ;
 int GFP_KERNEL ;
 int GIG_TICK ;
 int INIT_LIST_HEAD (int *) ;
 int INS_command ;
 int MS_UNINITIALIZED ;
 int M_UNKNOWN ;
 int VALID_ID ;
 int add_timer (TYPE_2__*) ;
 struct cardstate* alloc_cs (struct gigaset_driver*) ;
 int gig_dbg (int ,char*,...) ;
 int gigaset_at_init (int *,int *,struct cardstate*,int ) ;
 int gigaset_freecs (struct cardstate*) ;
 int gigaset_handle_event ;
 int gigaset_if_init (struct cardstate*) ;
 int gigaset_inbuf_init (void*,int *,struct cardstate*,int ) ;
 int gigaset_init_dev_sysfs (struct cardstate*) ;
 int gigaset_initbcs (int *,struct cardstate*,int) ;
 int gigaset_register_to_LL (struct cardstate*,char const*) ;
 int gigaset_tab_cid ;
 int gigaset_tab_nocid ;
 int init_timer (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ jiffies ;
 void* kmalloc (int,int ) ;
 int make_valid (struct cardstate*,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pr_err (char*,...) ;
 int setup_timer (TYPE_2__*,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct cardstate*) ;
 int tasklet_init (int *,int *,unsigned long) ;
 int timer_tick ;

struct cardstate *gigaset_initcs(struct gigaset_driver *drv, int channels,
     int onechannel, int ignoreframes,
     int cidmode, const char *modulename)
{
 struct cardstate *cs = ((void*)0);
 unsigned long flags;
 int i;

 gig_dbg(DEBUG_INIT, "allocating cs");
 if (!(cs = alloc_cs(drv))) {
  pr_err("maximum number of devices exceeded\n");
  return ((void*)0);
 }

 gig_dbg(DEBUG_INIT, "allocating bcs[0..%d]", channels - 1);
 cs->bcs = kmalloc(channels * sizeof(struct bc_state), GFP_KERNEL);
 if (!cs->bcs) {
  pr_err("out of memory\n");
  goto error;
 }
 gig_dbg(DEBUG_INIT, "allocating inbuf");
 cs->inbuf = kmalloc(sizeof(struct inbuf_t), GFP_KERNEL);
 if (!cs->inbuf) {
  pr_err("out of memory\n");
  goto error;
 }

 cs->cs_init = 0;
 cs->channels = channels;
 cs->onechannel = onechannel;
 cs->ignoreframes = ignoreframes;
 INIT_LIST_HEAD(&cs->temp_at_states);
 cs->running = 0;
 init_timer(&cs->timer);
 spin_lock_init(&cs->ev_lock);
 cs->ev_tail = 0;
 cs->ev_head = 0;

 tasklet_init(&cs->event_tasklet, &gigaset_handle_event,
       (unsigned long) cs);
 cs->commands_pending = 0;
 cs->cur_at_seq = 0;
 cs->gotfwver = -1;
 cs->open_count = 0;
 cs->dev = ((void*)0);
 cs->tty = ((void*)0);
 cs->tty_dev = ((void*)0);
 cs->cidmode = cidmode != 0;
 cs->tabnocid = gigaset_tab_nocid;
 cs->tabcid = gigaset_tab_cid;

 init_waitqueue_head(&cs->waitqueue);
 cs->waiting = 0;

 cs->mode = M_UNKNOWN;
 cs->mstate = MS_UNINITIALIZED;

 for (i = 0; i < channels; ++i) {
  gig_dbg(DEBUG_INIT, "setting up bcs[%d].read", i);
  if (!gigaset_initbcs(cs->bcs + i, cs, i)) {
   pr_err("could not allocate channel %d data\n", i);
   goto error;
  }
 }

 ++cs->cs_init;

 gig_dbg(DEBUG_INIT, "setting up at_state");
 spin_lock_init(&cs->lock);
 gigaset_at_init(&cs->at_state, ((void*)0), cs, 0);
 cs->dle = 0;
 cs->cbytes = 0;

 gig_dbg(DEBUG_INIT, "setting up inbuf");
 if (onechannel) {
  gigaset_inbuf_init(cs->inbuf, cs->bcs, cs, INS_command);
 } else
  gigaset_inbuf_init(cs->inbuf, ((void*)0), cs, INS_command);

 cs->connected = 0;
 cs->isdn_up = 0;

 gig_dbg(DEBUG_INIT, "setting up cmdbuf");
 cs->cmdbuf = cs->lastcmdbuf = ((void*)0);
 spin_lock_init(&cs->cmdlock);
 cs->curlen = 0;
 cs->cmdbytes = 0;

 gig_dbg(DEBUG_INIT, "setting up iif");
 if (!gigaset_register_to_LL(cs, modulename)) {
  pr_err("error registering ISDN device\n");
  goto error;
 }

 make_valid(cs, VALID_ID);
 ++cs->cs_init;
 gig_dbg(DEBUG_INIT, "setting up hw");
 if (!cs->ops->initcshw(cs))
  goto error;

 ++cs->cs_init;


 gigaset_if_init(cs);


 gigaset_init_dev_sysfs(cs);

 spin_lock_irqsave(&cs->lock, flags);
 cs->running = 1;
 spin_unlock_irqrestore(&cs->lock, flags);
 setup_timer(&cs->timer, timer_tick, (unsigned long) cs);
 cs->timer.expires = jiffies + msecs_to_jiffies(GIG_TICK);


 add_timer(&cs->timer);

 gig_dbg(DEBUG_INIT, "cs initialized");
 return cs;

error:
 gig_dbg(DEBUG_INIT, "failed");
 gigaset_freecs(cs);
 return ((void*)0);
}
