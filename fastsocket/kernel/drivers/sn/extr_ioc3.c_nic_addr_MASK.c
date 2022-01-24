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
struct ioc3_driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioc3_driver_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3_driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_driver_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_driver_data*,int) ; 

__attribute__((used)) static void FUNC4(struct ioc3_driver_data *idd, unsigned long addr)
{
	int index;

	FUNC1(idd);
	FUNC3(idd, 0xF0);
	for (index = 0; index < 64; index++) {
		FUNC0(idd);
		FUNC0(idd);
		FUNC2(idd, (addr>>index)&1);
	}
}