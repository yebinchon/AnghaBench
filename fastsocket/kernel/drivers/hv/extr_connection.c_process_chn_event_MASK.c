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
typedef  scalar_t__ u32 ;
struct vmbus_channel {int batched_reading; int /*<<< orphan*/  inbound_lock; int /*<<< orphan*/  inbound; int /*<<< orphan*/  (* onchannel_callback ) (void*) ;void* channel_callback_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 struct vmbus_channel* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static void FUNC7(u32 relid)
{
	struct vmbus_channel *channel;
	unsigned long flags;
	void *arg;
	bool read_state;
	u32 bytes_to_read;

	/*
	 * Find the channel based on this relid and invokes the
	 * channel callback to process the event
	 */
	channel = FUNC3(relid);

	if (!channel) {
		FUNC2("channel not found for relid - %u\n", relid);
		return;
	}

	/*
	 * A channel once created is persistent even when there
	 * is no driver handling the device. An unloading driver
	 * sets the onchannel_callback to NULL under the
	 * protection of the channel inbound_lock. Thus, checking
	 * and invoking the driver specific callback takes care of
	 * orderly unloading of the driver.
	 */

	FUNC4(&channel->inbound_lock, flags);
	if (channel->onchannel_callback != NULL) {
		arg = channel->channel_callback_context;
		read_state = channel->batched_reading;
		/*
		 * This callback reads the messages sent by the host.
		 * We can optimize host to guest signaling by ensuring:
		 * 1. While reading the channel, we disable interrupts from
		 *    host.
		 * 2. Ensure that we process all posted messages from the host
		 *    before returning from this callback.
		 * 3. Once we return, enable signaling from the host. Once this
		 *    state is set we check to see if additional packets are
		 *    available to read. In this case we repeat the process.
		 */

		do {
			FUNC0(&channel->inbound);
			channel->onchannel_callback(arg);
			bytes_to_read = FUNC1(&channel->inbound);
		} while (read_state && (bytes_to_read != 0));
	} else {
		FUNC2("no channel callback for relid - %u\n", relid);
	}

	FUNC5(&channel->inbound_lock, flags);
}