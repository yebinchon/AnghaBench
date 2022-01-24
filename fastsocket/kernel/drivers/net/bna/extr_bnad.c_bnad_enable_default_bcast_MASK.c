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
typedef  int /*<<< orphan*/  u8 ;
struct bnad_rx_info {int /*<<< orphan*/  rx; } ;
struct TYPE_2__ {int mcast_comp_status; int /*<<< orphan*/  mcast_comp; } ;
struct bnad {TYPE_1__ bnad_completions; int /*<<< orphan*/  bna_lock; struct bnad_rx_info* rx_info; } ;

/* Variables and functions */
 int BNA_CB_SUCCESS ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ bnad_bcast_addr ; 
 int /*<<< orphan*/  bnad_cb_rx_mcast_add ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct bnad *bnad)
{
	struct bnad_rx_info *rx_info = &bnad->rx_info[0];
	int ret;
	unsigned long flags;

	FUNC1(&bnad->bnad_completions.mcast_comp);

	FUNC2(&bnad->bna_lock, flags);
	ret = FUNC0(rx_info->rx, (u8 *)bnad_bcast_addr,
				bnad_cb_rx_mcast_add);
	FUNC3(&bnad->bna_lock, flags);

	if (ret == BNA_CB_SUCCESS)
		FUNC4(&bnad->bnad_completions.mcast_comp);
	else
		return -ENODEV;

	if (bnad->bnad_completions.mcast_comp_status != BNA_CB_SUCCESS)
		return -ENODEV;

	return 0;
}