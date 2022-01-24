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
struct ipu {int /*<<< orphan*/  lock; } ;
struct idmac_channel {int /*<<< orphan*/  active_buffer; } ;
struct idmac {int dummy; } ;
struct dma_chan {int /*<<< orphan*/  chan_id; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idmac* FUNC3 (int /*<<< orphan*/ ) ; 
 struct idmac_channel* FUNC4 (struct dma_chan*) ; 
 struct ipu* FUNC5 (struct idmac*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct idmac_channel *ichan = FUNC4(chan);
	struct idmac *idmac = FUNC3(chan->device);
	struct ipu *ipu = FUNC5(idmac);
	unsigned long flags;

	/* This is not always needed, but doesn't hurt either */
	FUNC1(&ipu->lock, flags);
	FUNC0(chan->chan_id, ichan->active_buffer);
	FUNC2(&ipu->lock, flags);

	/*
	 * Might need to perform some parts of initialisation from
	 * ipu_enable_channel(), but not all, we do not want to reset to buffer
	 * 0, don't need to set priority again either, but re-enabling the task
	 * and the channel might be a good idea.
	 */
}