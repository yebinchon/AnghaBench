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
typedef  int /*<<< orphan*/  u16 ;
struct tg3_napi {int /*<<< orphan*/ * rx_rcb_prod_idx; struct tg3_hw_status* hw_status; int /*<<< orphan*/  status_mapping; } ;
struct tg3_hw_status {TYPE_2__* idx; int /*<<< orphan*/  rx_mini_consumer; int /*<<< orphan*/  reserved; int /*<<< orphan*/  rx_jumbo_consumer; } ;
struct tg3_hw_stats {int dummy; } ;
struct tg3 {int irq_cnt; TYPE_1__* pdev; struct tg3_napi* napi; void* hw_stats; int /*<<< orphan*/  stats_mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_producer; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_RSS ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int TG3_HW_STATUS_SIZE ; 
 int __GFP_ZERO ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 scalar_t__ FUNC3 (struct tg3*) ; 
 scalar_t__ FUNC4 (struct tg3*) ; 

__attribute__((used)) static int FUNC5(struct tg3 *tp)
{
	int i;

	tp->hw_stats = FUNC0(&tp->pdev->dev,
					  sizeof(struct tg3_hw_stats),
					  &tp->stats_mapping,
					  GFP_KERNEL | __GFP_ZERO);
	if (!tp->hw_stats)
		goto err_out;

	for (i = 0; i < tp->irq_cnt; i++) {
		struct tg3_napi *tnapi = &tp->napi[i];
		struct tg3_hw_status *sblk;

		tnapi->hw_status = FUNC0(&tp->pdev->dev,
						      TG3_HW_STATUS_SIZE,
						      &tnapi->status_mapping,
						      GFP_KERNEL | __GFP_ZERO);
		if (!tnapi->hw_status)
			goto err_out;

		sblk = tnapi->hw_status;

		if (FUNC1(tp, ENABLE_RSS)) {
			u16 *prodptr = NULL;

			/*
			 * When RSS is enabled, the status block format changes
			 * slightly.  The "rx_jumbo_consumer", "reserved",
			 * and "rx_mini_consumer" members get mapped to the
			 * other three rx return ring producer indexes.
			 */
			switch (i) {
			case 1:
				prodptr = &sblk->idx[0].rx_producer;
				break;
			case 2:
				prodptr = &sblk->rx_jumbo_consumer;
				break;
			case 3:
				prodptr = &sblk->reserved;
				break;
			case 4:
				prodptr = &sblk->rx_mini_consumer;
				break;
			}
			tnapi->rx_rcb_prod_idx = prodptr;
		} else {
			tnapi->rx_rcb_prod_idx = &sblk->idx[0].rx_producer;
		}
	}

	if (FUNC4(tp) || FUNC3(tp))
		goto err_out;

	return 0;

err_out:
	FUNC2(tp);
	return -ENOMEM;
}