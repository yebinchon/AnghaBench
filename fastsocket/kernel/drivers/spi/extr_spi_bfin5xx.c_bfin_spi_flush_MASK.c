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
struct driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_STAT_CLR ; 
 int BIT_STAT_SPIF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int loops_per_jiffy ; 
 int FUNC1 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct driver_data *drv_data)
{
	unsigned long limit = loops_per_jiffy << 1;

	/* wait for stop and clear stat */
	while (!(FUNC1(drv_data) & BIT_STAT_SPIF) && --limit)
		FUNC0();

	FUNC2(drv_data, BIT_STAT_CLR);

	return limit;
}