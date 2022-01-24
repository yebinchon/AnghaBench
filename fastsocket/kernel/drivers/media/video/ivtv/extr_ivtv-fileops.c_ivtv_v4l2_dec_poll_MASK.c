#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ buffers; } ;
struct ivtv_stream {TYPE_2__ q_free; int /*<<< orphan*/  waitq; } ;
struct TYPE_6__ {TYPE_1__* events; } ;
struct ivtv_open_id {size_t type; TYPE_3__ fh; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  i_flags; struct ivtv_stream* streams; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_4__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  subscribed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IVTV_F_I_EV_DEC_STOPPED ; 
 int /*<<< orphan*/  IVTV_F_I_EV_VSYNC ; 
 int /*<<< orphan*/  IVTV_F_I_EV_VSYNC_ENABLED ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ivtv_open_id* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 

unsigned int FUNC8(struct file *filp, poll_table *wait)
{
	struct ivtv_open_id *id = FUNC2(filp->private_data);
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];
	int res = 0;

	/* add stream's waitq to the poll list */
	FUNC0("Decoder poll\n");

	/* If there are subscribed events, then only use the new event
	   API instead of the old video.h based API. */
	if (!FUNC3(&id->fh.events->subscribed)) {
		FUNC4(filp, &id->fh.events->wait, wait);
		/* Turn off the old-style vsync events */
		FUNC1(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);
		if (FUNC7(&id->fh))
			res = POLLPRI;
	} else {
		/* This is the old-style API which is here only for backwards
		   compatibility. */
		FUNC4(filp, &s->waitq, wait);
		FUNC5(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);
		if (FUNC6(IVTV_F_I_EV_VSYNC, &itv->i_flags) ||
		    FUNC6(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags))
			res = POLLPRI;
	}

	/* Allow write if buffers are available for writing */
	if (s->q_free.buffers)
		res |= POLLOUT | POLLWRNORM;
	return res;
}