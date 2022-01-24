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
struct tty3270 {int /*<<< orphan*/  read; int /*<<< orphan*/  view; TYPE_1__* input; } ;
struct raw3270_request {struct tty3270* callback_data; int /*<<< orphan*/  callback; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_READMOD ; 
 int /*<<< orphan*/  FUNC0 (struct raw3270_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3270_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3270_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct raw3270_request*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct raw3270_request*) ; 
 int /*<<< orphan*/  tty3270_read_callback ; 
 struct raw3270_request* FUNC5 (int /*<<< orphan*/ *,struct raw3270_request*) ; 

__attribute__((used)) static void
FUNC6(struct tty3270 *tp, int lock)
{
	struct raw3270_request *rrq;
	int rc;

	rrq = FUNC5(&tp->read, 0);
	if (!rrq)
		/* Read already scheduled. */
		return;
	rrq->callback = tty3270_read_callback;
	rrq->callback_data = tp;
	FUNC1(rrq, TC_READMOD);
	FUNC2(rrq, tp->input->string, tp->input->len);
	/* Issue the read modified request. */
	if (lock) {
		rc = FUNC3(&tp->view, rrq);
	} else
		rc = FUNC4(&tp->view, rrq);
	if (rc) {
		FUNC0(rrq);
		FUNC5(&tp->read, rrq);
	}
}