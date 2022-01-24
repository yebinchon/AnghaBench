#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inbuf_t {int dummy; } ;
struct gigaset_driver {int dummy; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct cardstate {int channels; int onechannel; int ignoreframes; int running; int gotfwver; int cidmode; TYPE_2__ timer; int /*<<< orphan*/  lock; scalar_t__ cs_init; TYPE_1__* ops; scalar_t__ cmdbytes; scalar_t__ curlen; int /*<<< orphan*/  cmdlock; int /*<<< orphan*/ * lastcmdbuf; int /*<<< orphan*/  cmdbuf; scalar_t__ isdn_up; scalar_t__ connected; void* inbuf; int /*<<< orphan*/ * bcs; scalar_t__ cbytes; scalar_t__ dle; int /*<<< orphan*/  at_state; int /*<<< orphan*/  mstate; int /*<<< orphan*/  mode; scalar_t__ waiting; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  tabcid; int /*<<< orphan*/  tabnocid; int /*<<< orphan*/ * tty_dev; int /*<<< orphan*/ * tty; int /*<<< orphan*/ * dev; scalar_t__ open_count; scalar_t__ cur_at_seq; scalar_t__ commands_pending; int /*<<< orphan*/  event_tasklet; scalar_t__ ev_head; scalar_t__ ev_tail; int /*<<< orphan*/  ev_lock; int /*<<< orphan*/  temp_at_states; } ;
struct bc_state {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* initcshw ) (struct cardstate*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GIG_TICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INS_command ; 
 int /*<<< orphan*/  MS_UNINITIALIZED ; 
 int /*<<< orphan*/  M_UNKNOWN ; 
 int /*<<< orphan*/  VALID_ID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct cardstate* FUNC2 (struct gigaset_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cardstate*) ; 
 int /*<<< orphan*/  gigaset_handle_event ; 
 int /*<<< orphan*/  FUNC6 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct cardstate*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cardstate*,char const*) ; 
 int /*<<< orphan*/  gigaset_tab_cid ; 
 int /*<<< orphan*/  gigaset_tab_nocid ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cardstate*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer_tick ; 

struct cardstate *FUNC23(struct gigaset_driver *drv, int channels,
				 int onechannel, int ignoreframes,
				 int cidmode, const char *modulename)
{
	struct cardstate *cs = NULL;
	unsigned long flags;
	int i;

	FUNC3(DEBUG_INIT, "allocating cs");
	if (!(cs = FUNC2(drv))) {
		FUNC16("maximum number of devices exceeded\n");
		return NULL;
	}

	FUNC3(DEBUG_INIT, "allocating bcs[0..%d]", channels - 1);
	cs->bcs = FUNC13(channels * sizeof(struct bc_state), GFP_KERNEL);
	if (!cs->bcs) {
		FUNC16("out of memory\n");
		goto error;
	}
	FUNC3(DEBUG_INIT, "allocating inbuf");
	cs->inbuf = FUNC13(sizeof(struct inbuf_t), GFP_KERNEL);
	if (!cs->inbuf) {
		FUNC16("out of memory\n");
		goto error;
	}

	cs->cs_init = 0;
	cs->channels = channels;
	cs->onechannel = onechannel;
	cs->ignoreframes = ignoreframes;
	FUNC0(&cs->temp_at_states);
	cs->running = 0;
	FUNC11(&cs->timer); /* clear next & prev */
	FUNC18(&cs->ev_lock);
	cs->ev_tail = 0;
	cs->ev_head = 0;

	FUNC22(&cs->event_tasklet, &gigaset_handle_event,
		     (unsigned long) cs);
	cs->commands_pending = 0;
	cs->cur_at_seq = 0;
	cs->gotfwver = -1;
	cs->open_count = 0;
	cs->dev = NULL;
	cs->tty = NULL;
	cs->tty_dev = NULL;
	cs->cidmode = cidmode != 0;
	cs->tabnocid = gigaset_tab_nocid;
	cs->tabcid = gigaset_tab_cid;

	FUNC12(&cs->waitqueue);
	cs->waiting = 0;

	cs->mode = M_UNKNOWN;
	cs->mstate = MS_UNINITIALIZED;

	for (i = 0; i < channels; ++i) {
		FUNC3(DEBUG_INIT, "setting up bcs[%d].read", i);
		if (!FUNC9(cs->bcs + i, cs, i)) {
			FUNC16("could not allocate channel %d data\n", i);
			goto error;
		}
	}

	++cs->cs_init;

	FUNC3(DEBUG_INIT, "setting up at_state");
	FUNC18(&cs->lock);
	FUNC4(&cs->at_state, NULL, cs, 0);
	cs->dle = 0;
	cs->cbytes = 0;

	FUNC3(DEBUG_INIT, "setting up inbuf");
	if (onechannel) {			//FIXME distinction necessary?
		FUNC7(cs->inbuf, cs->bcs, cs, INS_command);
	} else
		FUNC7(cs->inbuf, NULL,    cs, INS_command);

	cs->connected = 0;
	cs->isdn_up = 0;

	FUNC3(DEBUG_INIT, "setting up cmdbuf");
	cs->cmdbuf = *(cs->lastcmdbuf = NULL);
	FUNC18(&cs->cmdlock);
	cs->curlen = 0;
	cs->cmdbytes = 0;

	FUNC3(DEBUG_INIT, "setting up iif");
	if (!FUNC10(cs, modulename)) {
		FUNC16("error registering ISDN device\n");
		goto error;
	}

	FUNC14(cs, VALID_ID);
	++cs->cs_init;
	FUNC3(DEBUG_INIT, "setting up hw");
	if (!cs->ops->initcshw(cs))
		goto error;

	++cs->cs_init;

	/* set up character device */
	FUNC6(cs);

	/* set up device sysfs */
	FUNC8(cs);

	FUNC19(&cs->lock, flags);
	cs->running = 1;
	FUNC20(&cs->lock, flags);
	FUNC17(&cs->timer, timer_tick, (unsigned long) cs);
	cs->timer.expires = jiffies + FUNC15(GIG_TICK);
	/* FIXME: can jiffies increase too much until the timer is added?
	 * Same problem(?) with mod_timer() in timer_tick(). */
	FUNC1(&cs->timer);

	FUNC3(DEBUG_INIT, "cs initialized");
	return cs;

error:
	FUNC3(DEBUG_INIT, "failed");
	FUNC5(cs);
	return NULL;
}