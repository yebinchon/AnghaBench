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
typedef  int /*<<< orphan*/  u8 ;
struct efx_tx_queue {int /*<<< orphan*/  insert_count; TYPE_2__* efx; } ;
struct efx_tx_buffer {int flags; scalar_t__ len; scalar_t__ unmap_len; int /*<<< orphan*/  heap_buf; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFX_TX_BUF_HEAP ; 
 int EFX_TX_BUF_MAP_SINGLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct efx_tx_queue *tx_queue,
			      struct efx_tx_buffer *buffer, u8 *header)
{
	if (FUNC3(buffer->flags & EFX_TX_BUF_HEAP)) {
		buffer->dma_addr = FUNC0(&tx_queue->efx->pci_dev->dev,
						  header, buffer->len,
						  DMA_TO_DEVICE);
		if (FUNC3(FUNC1(&tx_queue->efx->pci_dev->dev,
					       buffer->dma_addr))) {
			FUNC2(buffer->heap_buf);
			buffer->len = 0;
			buffer->flags = 0;
			return -ENOMEM;
		}
		buffer->unmap_len = buffer->len;
		buffer->flags |= EFX_TX_BUF_MAP_SINGLE;
	}

	++tx_queue->insert_count;
	return 0;
}