#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct mlx4_en_dev {int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct mlx4_en_dev *mdev,
			    struct skb_shared_hwtstamps *hwts,
			    u64 timestamp)
{
	u64 nsec;

	nsec = FUNC2(&mdev->clock, timestamp);

	FUNC0(hwts, 0, sizeof(struct skb_shared_hwtstamps));
	hwts->hwtstamp = FUNC1(nsec);
}