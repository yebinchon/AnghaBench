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
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  SDHC2_CD ; 
 int /*<<< orphan*/  SDHC2_WP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, irq_handler_t detect_irq,
		void *data)
{
	int ret;

	ret = FUNC2(SDHC2_CD, "sdhc-detect");
	if (ret)
		return ret;

	FUNC0(SDHC2_CD);

	ret = FUNC2(SDHC2_WP, "sdhc-wp");
	if (ret)
		goto err_gpio_free;
	FUNC0(SDHC2_WP);

	ret = FUNC4(FUNC3(SDHC2_CD), detect_irq,
		IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
		"sdhc2-card-detect", data);
	if (ret)
		goto err_gpio_free_2;

	return 0;

err_gpio_free_2:
	FUNC1(SDHC2_WP);
err_gpio_free:
	FUNC1(SDHC2_CD);

	return ret;
}