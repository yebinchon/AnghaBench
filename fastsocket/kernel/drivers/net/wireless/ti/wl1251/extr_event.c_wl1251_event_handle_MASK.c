#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct wl1251 {int /*<<< orphan*/ * mbox_ptr; } ;
struct event_mailbox {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_REG_INTERRUPT_TRIG ; 
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int EINVAL ; 
 int /*<<< orphan*/  INTR_TRIG_EVENT_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct wl1251*,struct event_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct event_mailbox*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct wl1251 *wl, u8 mbox_num)
{
	struct event_mailbox mbox;
	int ret;

	FUNC0(DEBUG_EVENT, "EVENT on mbox %d", mbox_num);

	if (mbox_num > 1)
		return -EINVAL;

	/* first we read the mbox descriptor */
	FUNC2(wl, wl->mbox_ptr[mbox_num], &mbox,
			    sizeof(struct event_mailbox));

	/* process the descriptor */
	ret = FUNC1(wl, &mbox);
	if (ret < 0)
		return ret;

	/* then we let the firmware know it can go on...*/
	FUNC3(wl, ACX_REG_INTERRUPT_TRIG, INTR_TRIG_EVENT_ACK);

	return 0;
}