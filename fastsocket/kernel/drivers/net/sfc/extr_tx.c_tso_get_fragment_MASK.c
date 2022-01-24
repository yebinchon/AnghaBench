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
struct tso_state {int /*<<< orphan*/  unmap_addr; int /*<<< orphan*/  dma_addr; void* in_len; void* unmap_len; scalar_t__ dma_flags; } ;
struct efx_nic {TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tso_state *st, struct efx_nic *efx,
			    skb_frag_t *frag)
{
	st->unmap_addr = FUNC2(&efx->pci_dev->dev, frag, 0,
					  FUNC3(frag), DMA_TO_DEVICE);
	if (FUNC1(!FUNC0(&efx->pci_dev->dev, st->unmap_addr))) {
		st->dma_flags = 0;
		st->unmap_len = FUNC3(frag);
		st->in_len = FUNC3(frag);
		st->dma_addr = st->unmap_addr;
		return 0;
	}
	return -ENOMEM;
}