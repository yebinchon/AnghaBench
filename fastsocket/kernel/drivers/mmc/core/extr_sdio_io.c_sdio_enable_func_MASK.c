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
struct sdio_func {int num; int /*<<< orphan*/  card; int /*<<< orphan*/  enable_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIME ; 
 int /*<<< orphan*/  SDIO_CCCR_IOEx ; 
 int /*<<< orphan*/  SDIO_CCCR_IORx ; 
 unsigned long jiffies ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

int FUNC6(struct sdio_func *func)
{
	int ret;
	unsigned char reg;
	unsigned long timeout;

	FUNC0(!func);
	FUNC0(!func->card);

	FUNC3("SDIO: Enabling device %s...\n", FUNC4(func));

	ret = FUNC1(func->card, 0, 0, SDIO_CCCR_IOEx, 0, &reg);
	if (ret)
		goto err;

	reg |= 1 << func->num;

	ret = FUNC1(func->card, 1, 0, SDIO_CCCR_IOEx, reg, NULL);
	if (ret)
		goto err;

	timeout = jiffies + FUNC2(func->enable_timeout);

	while (1) {
		ret = FUNC1(func->card, 0, 0, SDIO_CCCR_IORx, 0, &reg);
		if (ret)
			goto err;
		if (reg & (1 << func->num))
			break;
		ret = -ETIME;
		if (FUNC5(jiffies, timeout))
			goto err;
	}

	FUNC3("SDIO: Enabled device %s\n", FUNC4(func));

	return 0;

err:
	FUNC3("SDIO: Failed to enable device %s\n", FUNC4(func));
	return ret;
}