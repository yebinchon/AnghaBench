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
struct TYPE_2__ {int /*<<< orphan*/ * platform_data; } ;
struct sa1111_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int GPIO_A0 ; 
 int GPIO_A1 ; 
 int GPIO_A2 ; 
 int GPIO_A3 ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  lubbock_pcmcia_ops ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sa1111_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sa1111_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sa1111_dev*,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct sa1111_dev *sadev)
{
	int ret = -ENODEV;

	if (FUNC2()) {
		/*
		 * Set GPIO_A<3:0> to be outputs for the MAX1600,
		 * and switch to standby mode.
		 */
		FUNC4(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0, 0);
		FUNC3(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);
		FUNC5(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);

		/* Set CF Socket 1 power to standby mode. */
		FUNC1((1 << 15) | (1 << 14), 0);

		sadev->dev.platform_data = &lubbock_pcmcia_ops;
		ret = FUNC0(&sadev->dev);
	}

	return ret;
}