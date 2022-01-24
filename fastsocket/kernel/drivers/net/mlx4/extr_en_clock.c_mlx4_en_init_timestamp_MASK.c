#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {int shift; int /*<<< orphan*/  mask; int /*<<< orphan*/  mult; int /*<<< orphan*/  read; } ;
struct mlx4_en_dev {int /*<<< orphan*/  overflow_period; TYPE_2__ cycles; int /*<<< orphan*/  clock; struct mlx4_dev* dev; } ;
struct TYPE_5__ {int hca_core_clock; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mlx4_en_read_clock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC8(struct mlx4_en_dev *mdev)
{
	struct mlx4_dev *dev = mdev->dev;
	u64 ns;

	FUNC6(&mdev->cycles, 0, sizeof(mdev->cycles));
	mdev->cycles.read = mlx4_en_read_clock;
	mdev->cycles.mask = FUNC0(48);
	/* Using shift to make calculation more accurate. Since current HW
	 * clock frequency is 427 MHz, and cycles are given using a 48 bits
	 * register, the biggest shift when calculating using u64, is 14
	 * (max_cycles * multiplier < 2^64)
	 */
	mdev->cycles.shift = 14;
	mdev->cycles.mult =
		FUNC1(1000 * dev->caps.hca_core_clock, mdev->cycles.shift);

	FUNC7(&mdev->clock, &mdev->cycles,
			 FUNC5(FUNC4()));

	/* Calculate period in seconds to call the overflow watchdog - to make
	 * sure counter is checked at least once every wrap around.
	 */
	ns = FUNC2(&mdev->cycles, mdev->cycles.mask);
	FUNC3(ns, NSEC_PER_SEC / 2 / HZ);
	mdev->overflow_period = ns;
}