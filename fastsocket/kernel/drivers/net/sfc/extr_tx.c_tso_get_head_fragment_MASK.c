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
struct tso_state {int header_len; int unmap_len; int in_len; int /*<<< orphan*/  unmap_addr; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  dma_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct efx_nic {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  EFX_TX_BUF_MAP_SINGLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC4(struct tso_state *st, struct efx_nic *efx,
				 const struct sk_buff *skb)
{
	int hl = st->header_len;
	int len = FUNC3(skb) - hl;

	st->unmap_addr = FUNC0(&efx->pci_dev->dev, skb->data + hl,
					len, DMA_TO_DEVICE);
	if (FUNC2(!FUNC1(&efx->pci_dev->dev, st->unmap_addr))) {
		st->dma_flags = EFX_TX_BUF_MAP_SINGLE;
		st->unmap_len = len;
		st->in_len = len;
		st->dma_addr = st->unmap_addr;
		return 0;
	}
	return -ENOMEM;
}