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
struct dma_async_tx_descriptor {int /*<<< orphan*/  tx_submit; } ;
struct idmac_tx_desc {int /*<<< orphan*/  list; struct dma_async_tx_descriptor txd; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct idmac_channel {int n_tx_desc; int /*<<< orphan*/  free_list; TYPE_2__ dma_chan; int /*<<< orphan*/  queue; struct idmac_tx_desc* desc; } ;
struct idmac {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*,TYPE_2__*) ; 
 int /*<<< orphan*/  idmac_tx_submit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct idmac* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct idmac*) ; 
 struct idmac_tx_desc* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct idmac_channel *ichan, int n)
{
	struct idmac_tx_desc *desc = FUNC8(n * sizeof(struct idmac_tx_desc));
	struct idmac *idmac = FUNC6(ichan->dma_chan.device);

	if (!desc)
		return -ENOMEM;

	/* No interrupts, just disable the tasklet for a moment */
	FUNC4(&FUNC7(idmac)->tasklet);

	ichan->n_tx_desc = n;
	ichan->desc = desc;
	FUNC0(&ichan->queue);
	FUNC0(&ichan->free_list);

	while (n--) {
		struct dma_async_tx_descriptor *txd = &desc->txd;

		FUNC3(txd, 0, sizeof(*txd));
		FUNC1(txd, &ichan->dma_chan);
		txd->tx_submit		= idmac_tx_submit;

		FUNC2(&desc->list, &ichan->free_list);

		desc++;
	}

	FUNC5(&FUNC7(idmac)->tasklet);

	return 0;
}