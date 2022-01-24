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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 scalar_t__ GPIO_PORTC ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, irq_handler_t detect_irq, void *data)
{
	int ret;

	ret = FUNC4(FUNC0(29), detect_irq, IRQF_TRIGGER_FALLING,
				"imx-mmc-detect", data);
	if (ret)
		return ret;

	ret = FUNC3(GPIO_PORTC + 28, "imx-mmc-ro");
	if (ret) {
		FUNC1(FUNC0(29), data);
		return ret;
	}

	FUNC2(GPIO_PORTC + 28);

	return 0;
}