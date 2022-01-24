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
struct hpsb_packet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hpsb_packet*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  tlabel_wq ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct hpsb_packet *packet)
{
	if (FUNC2() || FUNC1())
		return FUNC0(packet);

	/* NB: The macro wait_event_interruptible() is called with a condition
	 * argument with side effect.  This is only possible because the side
	 * effect does not occur until the condition became true, and
	 * wait_event_interruptible() won't evaluate the condition again after
	 * that. */
	return FUNC3(tlabel_wq,
					!FUNC0(packet));
}