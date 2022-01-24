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
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct qlcnic_rx_buffer {struct sk_buff* skb; int /*<<< orphan*/  dma; } ;
struct qlcnic_host_rds_ring {int /*<<< orphan*/  dma_size; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_2__ {int /*<<< orphan*/  csummed; } ;
struct qlcnic_adapter {TYPE_1__ stats; scalar_t__ rx_csum; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t STATUS_CKSUM_LOOP ; 
 size_t STATUS_CKSUM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

struct sk_buff * FUNC5(struct qlcnic_adapter *adapter,
				       struct qlcnic_host_rds_ring *ring,
				       u16 index, u16 cksum)
{
	struct qlcnic_rx_buffer *buffer;
	struct sk_buff *skb;

	buffer = &ring->rx_buf_arr[index];

	if (FUNC4(buffer->skb == NULL)) {
		FUNC0(1);
		return NULL;
	}

	FUNC2(adapter->pdev, buffer->dma, ring->dma_size,
			 PCI_DMA_FROMDEVICE);

	skb = buffer->skb;
	if (FUNC1(adapter->rx_csum &&
		   (cksum == STATUS_CKSUM_OK || cksum == STATUS_CKSUM_LOOP))) {
		adapter->stats.csummed++;
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	} else {
		FUNC3(skb);
	}

	buffer->skb = NULL;

	return skb;
}