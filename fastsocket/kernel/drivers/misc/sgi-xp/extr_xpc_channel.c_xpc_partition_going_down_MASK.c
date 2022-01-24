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
struct xpc_partition {int nchannels; struct xpc_channel* channels; } ;
struct xpc_channel {int /*<<< orphan*/  lock; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xpc_channel*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC9 (struct xpc_partition*) ; 

void
FUNC10(struct xpc_partition *part, enum xp_retval reason)
{
	unsigned long irq_flags;
	int ch_number;
	struct xpc_channel *ch;

	FUNC2(xpc_chan, "deactivating partition %d, reason=%d\n",
		FUNC1(part), reason);

	if (!FUNC8(part)) {
		/* infrastructure for this partition isn't currently set up */
		return;
	}

	/* disconnect channels associated with the partition going down */

	for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
		ch = &part->channels[ch_number];

		FUNC6(ch);
		FUNC3(&ch->lock, irq_flags);

		FUNC0(ch, reason, &irq_flags);

		FUNC4(&ch->lock, irq_flags);
		FUNC5(ch);
	}

	FUNC9(part);

	FUNC7(part);
}