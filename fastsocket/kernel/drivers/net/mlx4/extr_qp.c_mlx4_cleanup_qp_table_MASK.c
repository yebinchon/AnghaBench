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
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bitmap; } ;
struct TYPE_4__ {TYPE_1__ qp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC3 (struct mlx4_dev*) ; 

void FUNC4(struct mlx4_dev *dev)
{
	if (FUNC2(dev))
		return;

	FUNC0(dev, 0);
	FUNC1(&FUNC3(dev)->qp_table.bitmap);
}