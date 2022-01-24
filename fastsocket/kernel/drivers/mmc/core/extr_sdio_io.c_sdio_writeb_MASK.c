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
typedef  int /*<<< orphan*/  u8 ;
struct sdio_func {int /*<<< orphan*/  num; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct sdio_func *func, u8 b, unsigned int addr, int *err_ret)
{
	int ret;

	FUNC0(!func);

	ret = FUNC1(func->card, 1, func->num, addr, b, NULL);
	if (err_ret)
		*err_ret = ret;
}