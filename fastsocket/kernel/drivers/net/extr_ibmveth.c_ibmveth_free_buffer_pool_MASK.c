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
struct sk_buff {int dummy; } ;
struct ibmveth_buff_pool {int size; struct sk_buff** skbuff; struct sk_buff** dma_addr; int /*<<< orphan*/  buff_size; struct sk_buff** free_map; } ;
struct ibmveth_adapter {TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff**) ; 

__attribute__((used)) static void FUNC3(struct ibmveth_adapter *adapter,
				     struct ibmveth_buff_pool *pool)
{
	int i;

	FUNC2(pool->free_map);
	pool->free_map = NULL;

	if (pool->skbuff && pool->dma_addr) {
		for (i = 0; i < pool->size; ++i) {
			struct sk_buff *skb = pool->skbuff[i];
			if (skb) {
				FUNC1(&adapter->vdev->dev,
						 pool->dma_addr[i],
						 pool->buff_size,
						 DMA_FROM_DEVICE);
				FUNC0(skb);
				pool->skbuff[i] = NULL;
			}
		}
	}

	if (pool->dma_addr) {
		FUNC2(pool->dma_addr);
		pool->dma_addr = NULL;
	}

	if (pool->skbuff) {
		FUNC2(pool->skbuff);
		pool->skbuff = NULL;
	}
}