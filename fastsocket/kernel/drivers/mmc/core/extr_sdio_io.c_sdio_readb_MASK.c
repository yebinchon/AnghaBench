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
typedef  int u8 ;
struct sdio_func {int /*<<< orphan*/  num; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int*) ; 

u8 FUNC2(struct sdio_func *func, unsigned int addr, int *err_ret)
{
	int ret;
	u8 val;

	FUNC0(!func);

	if (err_ret)
		*err_ret = 0;

	ret = FUNC1(func->card, 0, func->num, addr, 0, &val);
	if (ret) {
		if (err_ret)
			*err_ret = ret;
		return 0xFF;
	}

	return val;
}