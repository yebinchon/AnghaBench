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
struct sdio_func {int num; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  SDIO_CCCR_IOEx ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 

int FUNC4(struct sdio_func *func)
{
	int ret;
	unsigned char reg;

	FUNC0(!func);
	FUNC0(!func->card);

	FUNC2("SDIO: Disabling device %s...\n", FUNC3(func));

	ret = FUNC1(func->card, 0, 0, SDIO_CCCR_IOEx, 0, &reg);
	if (ret)
		goto err;

	reg &= ~(1 << func->num);

	ret = FUNC1(func->card, 1, 0, SDIO_CCCR_IOEx, reg, NULL);
	if (ret)
		goto err;

	FUNC2("SDIO: Disabled device %s\n", FUNC3(func));

	return 0;

err:
	FUNC2("SDIO: Failed to disable device %s\n", FUNC3(func));
	return -EIO;
}