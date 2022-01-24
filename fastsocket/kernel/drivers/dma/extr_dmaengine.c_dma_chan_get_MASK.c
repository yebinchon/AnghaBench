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
struct module {int dummy; } ;
struct dma_chan {int client_count; TYPE_1__* device; } ;
struct TYPE_2__ {int (* device_alloc_chan_resources ) (struct dma_chan*) ;int /*<<< orphan*/  cap_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct module*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 struct module* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module*) ; 
 int FUNC5 (struct dma_chan*) ; 
 scalar_t__ FUNC6 (struct module*) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	int err = -ENODEV;
	struct module *owner = FUNC2(chan);

	if (chan->client_count) {
		FUNC0(owner);
		err = 0;
	} else if (FUNC6(owner))
		err = 0;

	if (err == 0)
		chan->client_count++;

	/* allocate upon first client reference */
	if (chan->client_count == 1 && err == 0) {
		int desc_cnt = chan->device->device_alloc_chan_resources(chan);

		if (desc_cnt < 0) {
			err = desc_cnt;
			chan->client_count = 0;
			FUNC4(owner);
		} else if (!FUNC3(DMA_PRIVATE, chan->device->cap_mask))
			FUNC1(chan);
	}

	return err;
}