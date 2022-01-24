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
typedef  int /*<<< orphan*/  u64 ;
struct ib_sge {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct iser_rx_desc {int /*<<< orphan*/  dma_addr; struct ib_sge rx_sg; } ;
struct iser_device {int /*<<< orphan*/  ib_device; TYPE_1__* mr; } ;
struct iser_conn {struct iser_rx_desc* rx_descs; scalar_t__ rx_desc_head; struct iser_device* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ISER_QP_MAX_RECV_DTOS ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct iser_rx_desc*) ; 
 struct iser_rx_desc* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct iser_conn *ib_conn)
{
	int i, j;
	u64 dma_addr;
	struct iser_rx_desc *rx_desc;
	struct ib_sge       *rx_sg;
	struct iser_device  *device = ib_conn->device;

	ib_conn->rx_descs = FUNC5(ISER_QP_MAX_RECV_DTOS *
				sizeof(struct iser_rx_desc), GFP_KERNEL);
	if (!ib_conn->rx_descs)
		goto rx_desc_alloc_fail;

	rx_desc = ib_conn->rx_descs;

	for (i = 0; i < ISER_QP_MAX_RECV_DTOS; i++, rx_desc++)  {
		dma_addr = FUNC0(device->ib_device, (void *)rx_desc,
					ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
		if (FUNC1(device->ib_device, dma_addr))
			goto rx_desc_dma_map_failed;

		rx_desc->dma_addr = dma_addr;

		rx_sg = &rx_desc->rx_sg;
		rx_sg->addr   = rx_desc->dma_addr;
		rx_sg->length = ISER_RX_PAYLOAD_SIZE;
		rx_sg->lkey   = device->mr->lkey;
	}

	ib_conn->rx_desc_head = 0;
	return 0;

rx_desc_dma_map_failed:
	rx_desc = ib_conn->rx_descs;
	for (j = 0; j < i; j++, rx_desc++)
		FUNC2(device->ib_device, rx_desc->dma_addr,
			ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
	FUNC4(ib_conn->rx_descs);
	ib_conn->rx_descs = NULL;
rx_desc_alloc_fail:
	FUNC3("failed allocating rx descriptors / data buffers\n");
	return -ENOMEM;
}