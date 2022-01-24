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
struct sdio_func {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,unsigned char,int /*<<< orphan*/ *) ; 

void FUNC3(struct sdio_func *func, unsigned char b, unsigned int addr,
	int *err_ret)
{
	int ret;

	FUNC0(!func);

	if ((addr < 0xF0 || addr > 0xFF) && (!FUNC1(func->card))) {
		if (err_ret)
			*err_ret = -EINVAL;
		return;
	}

	ret = FUNC2(func->card, 1, 0, addr, b, NULL);
	if (err_ret)
		*err_ret = ret;
}