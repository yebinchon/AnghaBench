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
struct sa1111_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int GPIO_A0 ; 
 int GPIO_A1 ; 
 int GPIO_A2 ; 
 int GPIO_A3 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  neponset_pcmcia_ops ; 
 int /*<<< orphan*/  FUNC1 (struct sa1111_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sa1111_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sa1111_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct sa1111_dev *sadev)
{
	int ret = -ENODEV;

	if (FUNC0()) {
		/*
		 * Set GPIO_A<3:0> to be outputs for the MAX1600,
		 * and switch to standby mode.
		 */
		FUNC2(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0, 0);
		FUNC1(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);
		FUNC3(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);
		ret = FUNC4(&sadev->dev, &neponset_pcmcia_ops, 0, 2);
	}

	return ret;
}