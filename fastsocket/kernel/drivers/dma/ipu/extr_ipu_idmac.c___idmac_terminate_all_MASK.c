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
struct idmac_tx_desc {int /*<<< orphan*/  txd; int /*<<< orphan*/  list; } ;
struct idmac_channel {scalar_t__ status; int n_tx_desc; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** sg; int /*<<< orphan*/  free_list; struct idmac_tx_desc* desc; int /*<<< orphan*/  queue; } ;
struct idmac {int dummy; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 scalar_t__ IPU_CHANNEL_ENABLED ; 
 scalar_t__ IPU_CHANNEL_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idmac*,struct idmac_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct idmac* FUNC9 (int /*<<< orphan*/ ) ; 
 struct idmac_channel* FUNC10 (struct dma_chan*) ; 
 TYPE_1__* FUNC11 (struct idmac*) ; 

__attribute__((used)) static void FUNC12(struct dma_chan *chan)
{
	struct idmac_channel *ichan = FUNC10(chan);
	struct idmac *idmac = FUNC9(chan->device);
	unsigned long flags;
	int i;

	FUNC1(idmac, ichan,
			    ichan->status >= IPU_CHANNEL_ENABLED);

	FUNC7(&FUNC11(idmac)->tasklet);

	/* ichan->queue is modified in ISR, have to spinlock */
	FUNC5(&ichan->lock, flags);
	FUNC4(&ichan->queue, &ichan->free_list);

	if (ichan->desc)
		for (i = 0; i < ichan->n_tx_desc; i++) {
			struct idmac_tx_desc *desc = ichan->desc + i;
			if (FUNC3(&desc->list))
				/* Descriptor was prepared, but not submitted */
				FUNC2(&desc->list, &ichan->free_list);

			FUNC0(&desc->txd);
		}

	ichan->sg[0] = NULL;
	ichan->sg[1] = NULL;
	FUNC6(&ichan->lock, flags);

	FUNC8(&FUNC11(idmac)->tasklet);

	ichan->status = IPU_CHANNEL_INITIALIZED;
}