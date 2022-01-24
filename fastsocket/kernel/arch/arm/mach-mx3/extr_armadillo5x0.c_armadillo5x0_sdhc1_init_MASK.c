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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IRQF_DISABLED ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  MX31_PIN_ATA_DMACK ; 
 int /*<<< orphan*/  MX31_PIN_ATA_RESET_B ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				   irq_handler_t detect_irq, void *data)
{
	int ret;
	int gpio_det, gpio_wp;

	gpio_det = FUNC0(MX31_PIN_ATA_DMACK);
	gpio_wp = FUNC0(MX31_PIN_ATA_RESET_B);

	ret = FUNC4(gpio_det, "sdhc-card-detect");
	if (ret)
		return ret;

	FUNC2(gpio_det);

	ret = FUNC4(gpio_wp, "sdhc-write-protect");
	if (ret)
		goto err_gpio_free;

	FUNC2(gpio_wp);

	/* When supported the trigger type have to be BOTH */
	ret = FUNC5(FUNC1(MX31_PIN_ATA_DMACK), detect_irq,
			  IRQF_DISABLED | IRQF_TRIGGER_FALLING,
			  "sdhc-detect", data);

	if (ret)
		goto err_gpio_free_2;

	return 0;

err_gpio_free_2:
	FUNC3(gpio_wp);

err_gpio_free:
	FUNC3(gpio_det);

	return ret;

}