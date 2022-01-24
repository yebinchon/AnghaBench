#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {int num_ports; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct mlx4_ib_dev *dev, int do_init)
{
	int i;

	if (!FUNC1(dev->dev))
		return;
	/* initialize or tear down tunnel QPs for the master */
	for (i = 0; i < dev->dev->caps.num_ports; i++)
		FUNC0(dev, FUNC2(dev->dev), i + 1, do_init);
	return;
}