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
struct TYPE_3__ {int size; void* base; int /*<<< orphan*/  basePA; } ;
struct vmxnet3_rx_queue {TYPE_2__* rx_ring; struct vmxnet3_rx_buf_info** buf_info; TYPE_1__ comp_ring; } ;
struct vmxnet3_rx_buf_info {int dummy; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  pdev; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_4__ {int size; void* base; int /*<<< orphan*/  basePA; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vmxnet3_rx_buf_info* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmxnet3_rx_queue*,struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC4(struct vmxnet3_rx_queue *rq, struct vmxnet3_adapter *adapter)
{
	int i;
	size_t sz;
	struct vmxnet3_rx_buf_info *bi;

	for (i = 0; i < 2; i++) {

		sz = rq->rx_ring[i].size * sizeof(struct Vmxnet3_RxDesc);
		rq->rx_ring[i].base = FUNC2(adapter->pdev, sz,
							&rq->rx_ring[i].basePA);
		if (!rq->rx_ring[i].base) {
			FUNC1(adapter->netdev,
				   "failed to allocate rx ring %d\n", i);
			goto err;
		}
	}

	sz = rq->comp_ring.size * sizeof(struct Vmxnet3_RxCompDesc);
	rq->comp_ring.base = FUNC2(adapter->pdev, sz,
						  &rq->comp_ring.basePA);
	if (!rq->comp_ring.base) {
		FUNC1(adapter->netdev, "failed to allocate rx comp ring\n");
		goto err;
	}

	sz = sizeof(struct vmxnet3_rx_buf_info) * (rq->rx_ring[0].size +
						   rq->rx_ring[1].size);
	bi = FUNC0(sz, GFP_KERNEL);
	if (!bi)
		goto err;

	rq->buf_info[0] = bi;
	rq->buf_info[1] = bi + rq->rx_ring[0].size;

	return 0;

err:
	FUNC3(rq, adapter);
	return -ENOMEM;
}