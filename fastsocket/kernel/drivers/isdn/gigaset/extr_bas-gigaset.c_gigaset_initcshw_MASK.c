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
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {TYPE_1__ hw; } ;
struct bas_cardstate {int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  timer_cmd_in; int /*<<< orphan*/  timer_atrdy; int /*<<< orphan*/  timer_ctrl; scalar_t__ basstate; scalar_t__ pending; int /*<<< orphan*/  lock; scalar_t__ rcvbuf_size; int /*<<< orphan*/ * rcvbuf; int /*<<< orphan*/ * urb_cmd_out; int /*<<< orphan*/ * urb_cmd_in; void* int_in_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IP_MSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bas_cardstate*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cardstate *cs)
{
	struct bas_cardstate *ucs;

	cs->hw.bas = ucs = FUNC3(sizeof *ucs, GFP_KERNEL);
	if (!ucs) {
		FUNC4("out of memory\n");
		return 0;
	}
	ucs->int_in_buf = FUNC3(IP_MSGSIZE, GFP_KERNEL);
	if (!ucs->int_in_buf) {
		FUNC2(ucs);
		FUNC4("out of memory\n");
		return 0;
	}

	ucs->urb_cmd_in = NULL;
	ucs->urb_cmd_out = NULL;
	ucs->rcvbuf = NULL;
	ucs->rcvbuf_size = 0;

	FUNC5(&ucs->lock);
	ucs->pending = 0;

	ucs->basstate = 0;
	FUNC0(&ucs->timer_ctrl);
	FUNC0(&ucs->timer_atrdy);
	FUNC0(&ucs->timer_cmd_in);
	FUNC1(&ucs->waitqueue);

	return 1;
}