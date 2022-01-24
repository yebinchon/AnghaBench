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
struct TYPE_5__ {int flags_len; void* address; } ;
union ibmveth_buf_desc {int /*<<< orphan*/  desc; TYPE_1__ fields; } ;
typedef  int u64 ;
struct net_device {int mtu; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct ibmveth_rx_q_entry {int dummy; } ;
struct TYPE_6__ {int queue_len; int num_slots; int toggle; void* queue_addr; void* queue_dma; scalar_t__ index; } ;
struct ibmveth_adapter {int /*<<< orphan*/  napi; void* bounce_buffer_dma; void* bounce_buffer; TYPE_3__* vdev; TYPE_4__* rx_buff_pool; void* filter_list_dma; void* buffer_list_dma; TYPE_2__ rx_queue; void* filter_list_addr; void* buffer_list_addr; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ active; scalar_t__ size; } ;
struct TYPE_7__ {struct device dev; int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int ENONET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_BUSY ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long H_SUCCESS ; 
 int IBMVETH_BUFF_OH ; 
 int IBMVETH_BUF_VALID ; 
 int IBMVETH_NUM_BUFF_POOLS ; 
 int /*<<< orphan*/  VIO_IRQ_DISABLE ; 
 void* FUNC1 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmveth_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct net_device*) ; 
 unsigned long FUNC10 (struct ibmveth_adapter*,union ibmveth_buf_desc,int) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*,...) ; 
 struct ibmveth_adapter* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct net_device*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC20(struct net_device *netdev)
{
	struct ibmveth_adapter *adapter = FUNC17(netdev);
	u64 mac_address = 0;
	int rxq_entries = 1;
	unsigned long lpar_rc;
	int rc;
	union ibmveth_buf_desc rxq_desc;
	int i;
	struct device *dev;

	FUNC15(netdev, "open starting\n");

	FUNC14(&adapter->napi);

	for(i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
		rxq_entries += adapter->rx_buff_pool[i].size;

	adapter->buffer_list_addr = (void*) FUNC4(GFP_KERNEL);
	adapter->filter_list_addr = (void*) FUNC4(GFP_KERNEL);

	if (!adapter->buffer_list_addr || !adapter->filter_list_addr) {
		FUNC16(netdev, "unable to allocate filter or buffer list "
			   "pages\n");
		rc = -ENOMEM;
		goto err_out;
	}

	adapter->rx_queue.queue_len = sizeof(struct ibmveth_rx_q_entry) *
						rxq_entries;
	adapter->rx_queue.queue_addr = FUNC11(adapter->rx_queue.queue_len,
						GFP_KERNEL);

	if (!adapter->rx_queue.queue_addr) {
		FUNC16(netdev, "unable to allocate rx queue pages\n");
		rc = -ENOMEM;
		goto err_out;
	}

	dev = &adapter->vdev->dev;

	adapter->buffer_list_dma = FUNC1(dev,
			adapter->buffer_list_addr, 4096, DMA_BIDIRECTIONAL);
	adapter->filter_list_dma = FUNC1(dev,
			adapter->filter_list_addr, 4096, DMA_BIDIRECTIONAL);
	adapter->rx_queue.queue_dma = FUNC1(dev,
			adapter->rx_queue.queue_addr,
			adapter->rx_queue.queue_len, DMA_BIDIRECTIONAL);

	if ((FUNC2(dev, adapter->buffer_list_dma)) ||
	    (FUNC2(dev, adapter->filter_list_dma)) ||
	    (FUNC2(dev, adapter->rx_queue.queue_dma))) {
		FUNC16(netdev, "unable to map filter or buffer list "
			   "pages\n");
		rc = -ENOMEM;
		goto err_out;
	}

	adapter->rx_queue.index = 0;
	adapter->rx_queue.num_slots = rxq_entries;
	adapter->rx_queue.toggle = 1;

	FUNC12(&mac_address, netdev->dev_addr, netdev->addr_len);
	mac_address = mac_address >> 16;

	rxq_desc.fields.flags_len = IBMVETH_BUF_VALID |
					adapter->rx_queue.queue_len;
	rxq_desc.fields.address = adapter->rx_queue.queue_dma;

	FUNC15(netdev, "buffer list @ 0x%p\n", adapter->buffer_list_addr);
	FUNC15(netdev, "filter list @ 0x%p\n", adapter->filter_list_addr);
	FUNC15(netdev, "receive q   @ 0x%p\n", adapter->rx_queue.queue_addr);

	FUNC6(adapter->vdev->unit_address, VIO_IRQ_DISABLE);

	lpar_rc = FUNC10(adapter, rxq_desc, mac_address);

	if (lpar_rc != H_SUCCESS) {
		FUNC16(netdev, "h_register_logical_lan failed with %ld\n",
			   lpar_rc);
		FUNC16(netdev, "buffer TCE:0x%llx filter TCE:0x%llx rxq "
			   "desc:0x%llx MAC:0x%llx\n",
				     adapter->buffer_list_dma,
				     adapter->filter_list_dma,
				     rxq_desc.desc,
				     mac_address);
		rc = -ENONET;
		goto err_out;
	}

	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++) {
		if (!adapter->rx_buff_pool[i].active)
			continue;
		if (FUNC7(&adapter->rx_buff_pool[i])) {
			FUNC16(netdev, "unable to alloc pool\n");
			adapter->rx_buff_pool[i].active = 0;
			rc = -ENOMEM;
			goto err_out;
		}
	}

	FUNC15(netdev, "registering irq 0x%x\n", netdev->irq);
	rc = FUNC19(netdev->irq, ibmveth_interrupt, 0, netdev->name,
			 netdev);
	if (rc != 0) {
		FUNC16(netdev, "unable to request irq 0x%x, rc %d\n",
			   netdev->irq, rc);
		do {
			rc = FUNC5(adapter->vdev->unit_address);
		} while (FUNC0(rc) || (rc == H_BUSY));

		goto err_out;
	}

	adapter->bounce_buffer =
	    FUNC11(netdev->mtu + IBMVETH_BUFF_OH, GFP_KERNEL);
	if (!adapter->bounce_buffer) {
		FUNC16(netdev, "unable to allocate bounce buffer\n");
		rc = -ENOMEM;
		goto err_out_free_irq;
	}
	adapter->bounce_buffer_dma =
	    FUNC1(&adapter->vdev->dev, adapter->bounce_buffer,
			   netdev->mtu + IBMVETH_BUFF_OH, DMA_BIDIRECTIONAL);
	if (FUNC2(dev, adapter->bounce_buffer_dma)) {
		FUNC16(netdev, "unable to map bounce buffer\n");
		rc = -ENOMEM;
		goto err_out_free_irq;
	}

	FUNC15(netdev, "initial replenish cycle\n");
	FUNC9(netdev->irq, netdev);

	FUNC18(netdev);

	FUNC15(netdev, "open complete\n");

	return 0;

err_out_free_irq:
	FUNC3(netdev->irq, netdev);
err_out:
	FUNC8(adapter);
	FUNC13(&adapter->napi);
	return rc;
}