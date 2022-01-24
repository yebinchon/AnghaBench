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
struct TYPE_2__ {int /*<<< orphan*/  is_going_down; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; TYPE_1__ sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_LID_CHANGE ; 
 int /*<<< orphan*/  MLX4_EQ_PORT_INFO_LID_CHANGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx4_ib_dev *dev, u8 port_num)
{
	FUNC1(dev, port_num, IB_EVENT_LID_CHANGE);

	if (FUNC2(dev->dev) && !dev->sriov.is_going_down)
		FUNC0(dev->dev, port_num,
					    MLX4_EQ_PORT_INFO_LID_CHANGE_MASK);
}