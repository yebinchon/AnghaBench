#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; int /*<<< orphan*/ * base; int /*<<< orphan*/  basePA; } ;
struct vmxnet3_rx_queue {TYPE_2__ comp_ring; TYPE_3__** buf_info; TYPE_1__* rx_ring; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  pdev; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * page; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/ * base; int /*<<< orphan*/  basePA; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vmxnet3_rx_queue *rq,
			       struct vmxnet3_adapter *adapter)
{
	int i;
	int j;

	/* all rx buffers must have already been freed */
	for (i = 0; i < 2; i++) {
		if (rq->buf_info[i]) {
			for (j = 0; j < rq->rx_ring[i].size; j++)
				FUNC0(rq->buf_info[i][j].page != NULL);
		}
	}


	FUNC1(rq->buf_info[0]);

	for (i = 0; i < 2; i++) {
		if (rq->rx_ring[i].base) {
			FUNC2(adapter->pdev, rq->rx_ring[i].size
					    * sizeof(struct Vmxnet3_RxDesc),
					    rq->rx_ring[i].base,
					    rq->rx_ring[i].basePA);
			rq->rx_ring[i].base = NULL;
		}
		rq->buf_info[i] = NULL;
	}

	if (rq->comp_ring.base) {
		FUNC2(adapter->pdev, rq->comp_ring.size *
				    sizeof(struct Vmxnet3_RxCompDesc),
				    rq->comp_ring.base, rq->comp_ring.basePA);
		rq->comp_ring.base = NULL;
	}
}