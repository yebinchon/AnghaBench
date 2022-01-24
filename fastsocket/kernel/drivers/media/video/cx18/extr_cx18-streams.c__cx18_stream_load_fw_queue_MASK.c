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
struct TYPE_2__ {int /*<<< orphan*/  depth; } ;
struct cx18_queue {int /*<<< orphan*/  depth; } ;
struct cx18_stream {TYPE_1__ q_free; struct cx18_queue q_busy; } ;
struct cx18_mdl {int dummy; } ;

/* Variables and functions */
 scalar_t__ CX18_MAX_FW_MDLS_PER_STREAM ; 
 struct cx18_queue* FUNC0 (struct cx18_stream*,struct cx18_mdl*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct cx18_mdl* FUNC2 (struct cx18_stream*,TYPE_1__*) ; 

__attribute__((used)) static
void FUNC3(struct cx18_stream *s)
{
	struct cx18_queue *q;
	struct cx18_mdl *mdl;

	if (FUNC1(&s->q_free.depth) == 0 ||
	    FUNC1(&s->q_busy.depth) >= CX18_MAX_FW_MDLS_PER_STREAM)
		return;

	/* Move from q_free to q_busy notifying the firmware, until the limit */
	do {
		mdl = FUNC2(s, &s->q_free);
		if (mdl == NULL)
			break;
		q = FUNC0(s, mdl);
	} while (FUNC1(&s->q_busy.depth) < CX18_MAX_FW_MDLS_PER_STREAM
		 && q == &s->q_busy);
}