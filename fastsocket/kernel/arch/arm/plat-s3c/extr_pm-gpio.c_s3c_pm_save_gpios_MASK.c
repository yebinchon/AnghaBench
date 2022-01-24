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
struct TYPE_2__ {scalar_t__ ngpio; int /*<<< orphan*/  label; } ;
struct s3c_gpio_chip {TYPE_1__ chip; int /*<<< orphan*/ * pm_save; } ;

/* Variables and functions */
 scalar_t__ CONFIG_S3C_GPIO_SPACE ; 
 unsigned int S3C_GPIO_END ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s3c_gpio_chip* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c_gpio_chip*) ; 

void FUNC3(void)
{
	struct s3c_gpio_chip *ourchip;
	unsigned int gpio_nr;

	for (gpio_nr = 0; gpio_nr < S3C_GPIO_END; gpio_nr++) {
		ourchip = FUNC1(gpio_nr);
		if (!ourchip)
			continue;

		FUNC2(ourchip);

		FUNC0("%s: save %08x,%08x,%08x,%08x\n",
			  ourchip->chip.label,
			  ourchip->pm_save[0],
			  ourchip->pm_save[1],
			  ourchip->pm_save[2],
			  ourchip->pm_save[3]);

		gpio_nr += ourchip->chip.ngpio;
		gpio_nr += CONFIG_S3C_GPIO_SPACE;
	}
}