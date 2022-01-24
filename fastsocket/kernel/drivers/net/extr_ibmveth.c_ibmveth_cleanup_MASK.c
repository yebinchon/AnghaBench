#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int queue_len; int /*<<< orphan*/ * queue_addr; void* queue_dma; } ;
struct ibmveth_adapter {int /*<<< orphan*/ * bounce_buffer; void* bounce_buffer_dma; TYPE_3__* netdev; TYPE_2__* vdev; TYPE_4__* rx_buff_pool; TYPE_1__ rx_queue; int /*<<< orphan*/ * filter_list_addr; void* filter_list_dma; int /*<<< orphan*/ * buffer_list_addr; void* buffer_list_dma; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ active; } ;
struct TYPE_7__ {int mtu; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 void* DMA_ERROR_CODE ; 
 int IBMVETH_BUFF_OH ; 
 int IBMVETH_NUM_BUFF_POOLS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmveth_adapter*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ibmveth_adapter *adapter)
{
	int i;
	struct device *dev = &adapter->vdev->dev;

	if (adapter->buffer_list_addr != NULL) {
		if (!FUNC0(dev, adapter->buffer_list_dma)) {
			FUNC1(dev, adapter->buffer_list_dma, 4096,
					DMA_BIDIRECTIONAL);
			adapter->buffer_list_dma = DMA_ERROR_CODE;
		}
		FUNC2((unsigned long)adapter->buffer_list_addr);
		adapter->buffer_list_addr = NULL;
	}

	if (adapter->filter_list_addr != NULL) {
		if (!FUNC0(dev, adapter->filter_list_dma)) {
			FUNC1(dev, adapter->filter_list_dma, 4096,
					DMA_BIDIRECTIONAL);
			adapter->filter_list_dma = DMA_ERROR_CODE;
		}
		FUNC2((unsigned long)adapter->filter_list_addr);
		adapter->filter_list_addr = NULL;
	}

	if (adapter->rx_queue.queue_addr != NULL) {
		if (!FUNC0(dev, adapter->rx_queue.queue_dma)) {
			FUNC1(dev,
					adapter->rx_queue.queue_dma,
					adapter->rx_queue.queue_len,
					DMA_BIDIRECTIONAL);
			adapter->rx_queue.queue_dma = DMA_ERROR_CODE;
		}
		FUNC4(adapter->rx_queue.queue_addr);
		adapter->rx_queue.queue_addr = NULL;
	}

	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
		if (adapter->rx_buff_pool[i].active)
			FUNC3(adapter,
						 &adapter->rx_buff_pool[i]);

	if (adapter->bounce_buffer != NULL) {
		if (!FUNC0(dev, adapter->bounce_buffer_dma)) {
			FUNC1(&adapter->vdev->dev,
					adapter->bounce_buffer_dma,
					adapter->netdev->mtu + IBMVETH_BUFF_OH,
					DMA_BIDIRECTIONAL);
			adapter->bounce_buffer_dma = DMA_ERROR_CODE;
		}
		FUNC4(adapter->bounce_buffer);
		adapter->bounce_buffer = NULL;
	}
}