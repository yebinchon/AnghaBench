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
typedef  int u32 ;
struct TYPE_3__ {int child_relid; } ;
struct vmbus_channel {int /*<<< orphan*/  sig_event; int /*<<< orphan*/  is_dedicated_interrupt; TYPE_1__ offermsg; } ;
struct TYPE_4__ {scalar_t__ send_int_page; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 TYPE_2__ vmbus_connection ; 

int FUNC2(struct vmbus_channel *channel)
{
	u32 child_relid = channel->offermsg.child_relid;

	if (!channel->is_dedicated_interrupt) {
		/* Each u32 represents 32 channels */
		FUNC1(child_relid & 31,
			(unsigned long *)vmbus_connection.send_int_page +
			(child_relid >> 5));
	}

	return FUNC0(channel->sig_event);
}