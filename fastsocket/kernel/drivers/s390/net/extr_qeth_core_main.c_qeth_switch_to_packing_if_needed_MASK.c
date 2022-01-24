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
struct qeth_qdio_out_q {int do_pack; TYPE_3__* card; int /*<<< orphan*/  used_buffers; } ;
struct TYPE_5__ {int /*<<< orphan*/  sc_dp_p; } ;
struct TYPE_4__ {scalar_t__ performance_stats; } ;
struct TYPE_6__ {TYPE_2__ perf_stats; TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ QETH_HIGH_WATERMARK_PACK ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qeth_qdio_out_q *queue)
{
	if (!queue->do_pack) {
		if (FUNC1(&queue->used_buffers)
		    >= QETH_HIGH_WATERMARK_PACK){
			/* switch non-PACKING -> PACKING */
			FUNC0(TRACE, 6, "np->pack");
			if (queue->card->options.performance_stats)
				queue->card->perf_stats.sc_dp_p++;
			queue->do_pack = 1;
		}
	}
}