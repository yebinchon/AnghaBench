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
struct TYPE_3__ {int is_going_down; TYPE_2__* demux; int /*<<< orphan*/ ** sqps; int /*<<< orphan*/  going_down_lock; } ;
struct mlx4_ib_dev {int num_ports; TYPE_1__ sriov; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ud_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(struct mlx4_ib_dev *dev)
{
	int i;
	unsigned long flags;

	if (!FUNC8(dev->dev))
		return;

	FUNC9(&dev->sriov.going_down_lock, flags);
	dev->sriov.is_going_down = 1;
	FUNC10(&dev->sriov.going_down_lock, flags);
	if (FUNC7(dev->dev)) {
		for (i = 0; i < dev->num_ports; i++) {
			FUNC0(dev->sriov.demux[i].ud_wq);
			FUNC6(dev->sriov.sqps[i]);
			FUNC1(dev->sriov.sqps[i]);
			dev->sriov.sqps[i] = NULL;
			FUNC5(&dev->sriov.demux[i]);
		}

		FUNC2(dev, -1);
		FUNC3(dev);
		FUNC4(dev);
	}
}