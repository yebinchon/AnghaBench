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
struct mite_struct {int* channel_allocated; int /*<<< orphan*/  lock; struct mite_channel* channels; } ;
struct mite_dma_descriptor_ring {int dummy; } ;
struct mite_channel {struct mite_dma_descriptor_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

struct mite_channel *FUNC2(struct mite_struct *mite,
						   struct
						   mite_dma_descriptor_ring
						   *ring, unsigned min_channel,
						   unsigned max_channel)
{
	int i;
	unsigned long flags;
	struct mite_channel *channel = NULL;

	/*  spin lock so mite_release_channel can be called safely from interrupts */
	FUNC0(&mite->lock, flags);
	for (i = min_channel; i <= max_channel; ++i) {
		if (mite->channel_allocated[i] == 0) {
			mite->channel_allocated[i] = 1;
			channel = &mite->channels[i];
			channel->ring = ring;
			break;
		}
	}
	FUNC1(&mite->lock, flags);
	return channel;
}