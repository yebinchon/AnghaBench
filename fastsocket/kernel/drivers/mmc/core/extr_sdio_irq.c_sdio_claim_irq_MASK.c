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
struct sdio_func {int num; int /*<<< orphan*/ * irq_handler; int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  sdio_irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  SDIO_CCCR_IENx ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 

int FUNC5(struct sdio_func *func, sdio_irq_handler_t *handler)
{
	int ret;
	unsigned char reg;

	FUNC0(!func);
	FUNC0(!func->card);

	FUNC2("SDIO: Enabling IRQ for %s...\n", FUNC4(func));

	if (func->irq_handler) {
		FUNC2("SDIO: IRQ for %s already in use.\n", FUNC4(func));
		return -EBUSY;
	}

	ret = FUNC1(func->card, 0, 0, SDIO_CCCR_IENx, 0, &reg);
	if (ret)
		return ret;

	reg |= 1 << func->num;

	reg |= 1; /* Master interrupt enable */

	ret = FUNC1(func->card, 1, 0, SDIO_CCCR_IENx, reg, NULL);
	if (ret)
		return ret;

	func->irq_handler = handler;
	ret = FUNC3(func->card);
	if (ret)
		func->irq_handler = NULL;

	return ret;
}