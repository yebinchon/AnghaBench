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
struct sdio_func {struct sdio_func* info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sdio_func* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct sdio_func *func = FUNC0(dev);

	FUNC2(func);

	if (func->info)
		FUNC1(func->info);

	FUNC1(func);
}