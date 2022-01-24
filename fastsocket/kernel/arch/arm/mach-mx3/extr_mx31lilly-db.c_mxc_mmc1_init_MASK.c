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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IRQF_DISABLED ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  MX31_PIN_GPIO1_1 ; 
 int /*<<< orphan*/  MX31_PIN_LCS0 ; 
 int /*<<< orphan*/  gpio_det ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gpio_wp ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
			 irq_handler_t detect_irq, void *data)
{
	int ret;

	gpio_det = FUNC0(MX31_PIN_GPIO1_1);
	gpio_wp = FUNC0(MX31_PIN_LCS0);

	ret = FUNC4(gpio_det, "MMC detect");
	if (ret)
		return ret;

	ret = FUNC4(gpio_wp, "MMC w/p");
	if (ret)
		goto exit_free_det;

	FUNC2(gpio_det);
	FUNC2(gpio_wp);

	ret = FUNC5(FUNC1(MX31_PIN_GPIO1_1), detect_irq,
			  IRQF_DISABLED | IRQF_TRIGGER_FALLING,
			  "MMC detect", data);
	if (ret)
		goto exit_free_wp;

	return 0;

exit_free_wp:
	FUNC3(gpio_wp);

exit_free_det:
	FUNC3(gpio_det);

	return ret;
}