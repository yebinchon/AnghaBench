#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {struct cx18_open_id* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  depth; } ;
struct cx18_stream {TYPE_1__ q_full; int /*<<< orphan*/  waitq; int /*<<< orphan*/  name; int /*<<< orphan*/  s_flags; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; struct cx18_stream* streams; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMOFF ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cx18_open_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned int FUNC9(struct file *filp, poll_table *wait)
{
	struct cx18_open_id *id = filp->private_data;
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];
	int eof = FUNC8(CX18_F_S_STREAMOFF, &s->s_flags);

	/* Start a capture if there is none */
	if (!eof && !FUNC8(CX18_F_S_STREAMING, &s->s_flags)) {
		int rc;

		FUNC5(&cx->serialize_lock);
		rc = FUNC4(id);
		FUNC6(&cx->serialize_lock);
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

	if (FUNC3(&s->q_full.depth))
		return POLLIN | POLLRDNORM;
	if (eof)
		return POLLHUP;
	return 0;
}