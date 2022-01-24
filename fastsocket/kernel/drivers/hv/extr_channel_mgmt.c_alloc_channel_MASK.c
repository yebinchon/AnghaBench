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
struct vmbus_channel {int /*<<< orphan*/  controlwq; int /*<<< orphan*/  sc_list; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  inbound_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*) ; 
 struct vmbus_channel* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vmbus_channel *FUNC5(void)
{
	struct vmbus_channel *channel;

	channel = FUNC3(sizeof(*channel), GFP_ATOMIC);
	if (!channel)
		return NULL;

	FUNC4(&channel->inbound_lock);
	FUNC4(&channel->sc_lock);

	FUNC0(&channel->sc_list);

	channel->controlwq = FUNC1("hv_vmbus_ctl");
	if (!channel->controlwq) {
		FUNC2(channel);
		return NULL;
	}

	return channel;
}