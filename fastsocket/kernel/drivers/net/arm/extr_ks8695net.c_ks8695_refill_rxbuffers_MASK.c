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
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  data; } ;
struct ks8695_priv {TYPE_2__* rx_ring; TYPE_1__* rx_buffers; int /*<<< orphan*/  ndev; int /*<<< orphan*/  dev; } ;
typedef  void* dma_addr_t ;
struct TYPE_4__ {void* status; void* length; void* data_ptr; } ;
struct TYPE_3__ {void* length; void* dma_ptr; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 void* MAX_RXBUF_SIZE ; 
 int MAX_RX_DESC ; 
 void* RDES_OWN ; 
 void* FUNC0 (void*) ; 
 struct sk_buff* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct ks8695_priv *ksp)
{
	/* Run around the RX ring, filling in any missing sk_buff's */
	int buff_n;

	for (buff_n = 0; buff_n < MAX_RX_DESC; ++buff_n) {
		if (!ksp->rx_buffers[buff_n].skb) {
			struct sk_buff *skb = FUNC1(MAX_RXBUF_SIZE);
			dma_addr_t mapping;

			ksp->rx_buffers[buff_n].skb = skb;
			if (skb == NULL) {
				/* Failed to allocate one, perhaps
				 * we'll try again later.
				 */
				break;
			}

			mapping = FUNC3(ksp->dev, skb->data,
						 MAX_RXBUF_SIZE,
						 DMA_FROM_DEVICE);
			if (FUNC5(FUNC4(ksp->dev, mapping))) {
				/* Failed to DMA map this SKB, try later */
				FUNC2(skb);
				ksp->rx_buffers[buff_n].skb = NULL;
				break;
			}
			ksp->rx_buffers[buff_n].dma_ptr = mapping;
			skb->dev = ksp->ndev;
			ksp->rx_buffers[buff_n].length = MAX_RXBUF_SIZE;

			/* Record this into the DMA ring */
			ksp->rx_ring[buff_n].data_ptr = FUNC0(mapping);
			ksp->rx_ring[buff_n].length =
				FUNC0(MAX_RXBUF_SIZE);

			FUNC6();

			/* And give ownership over to the hardware */
			ksp->rx_ring[buff_n].status = FUNC0(RDES_OWN);
		}
	}
}