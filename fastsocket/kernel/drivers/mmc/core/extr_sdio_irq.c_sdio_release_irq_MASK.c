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
struct sdio_func {int num; int /*<<< orphan*/  card; int /*<<< orphan*/ * irq_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SDIO_CCCR_IENx ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 

int FUNC5(struct sdio_func *func)
{
	int ret;
	unsigned char reg;

	FUNC0(!func);
	FUNC0(!func->card);

	FUNC2("SDIO: Disabling IRQ for %s...\n", FUNC4(func));

	if (func->irq_handler) {
		func->irq_handler = NULL;
		FUNC3(func->card);
	}

	ret = FUNC1(func->card, 0, 0, SDIO_CCCR_IENx, 0, &reg);
	if (ret)
		return ret;

	reg &= ~(1 << func->num);

	/* Disable master interrupt with the last function interrupt */
	if (!(reg & 0xFE))
		reg = 0;

	ret = FUNC1(func->card, 1, 0, SDIO_CCCR_IENx, reg, NULL);
	if (ret)
		return ret;

	return 0;
}