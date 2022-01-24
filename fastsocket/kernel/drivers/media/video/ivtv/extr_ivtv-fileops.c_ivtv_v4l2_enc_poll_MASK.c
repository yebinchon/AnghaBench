#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_3__ {scalar_t__ length; } ;
struct ivtv_stream {TYPE_2__ q_io; TYPE_1__ q_full; int /*<<< orphan*/  waitq; int /*<<< orphan*/  name; int /*<<< orphan*/  s_flags; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  serialize_lock; struct ivtv_stream* streams; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 struct ivtv_open_id* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ivtv_open_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned int FUNC9(struct file *filp, poll_table * wait)
{
	struct ivtv_open_id *id = FUNC3(filp->private_data);
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];
	int eof = FUNC8(IVTV_F_S_STREAMOFF, &s->s_flags);

	/* Start a capture if there is none */
	if (!eof && !FUNC8(IVTV_F_S_STREAMING, &s->s_flags)) {
		int rc;

		FUNC5(&itv->serialize_lock);
		rc = FUNC4(id);
		FUNC6(&itv->serialize_lock);
		if (rc) {
			FUNC2("Could not start capture for %s (%d)\n",
					s->name, rc);
			return POLLERR;
		}
		FUNC0("Encoder poll started capture\n");
	}

	/* add stream's waitq to the poll list */
	FUNC1("Encoder poll\n");
	FUNC7(filp, &s->waitq, wait);

	if (s->q_full.length || s->q_io.length)
		return POLLIN | POLLRDNORM;
	if (eof)
		return POLLHUP;
	return 0;
}