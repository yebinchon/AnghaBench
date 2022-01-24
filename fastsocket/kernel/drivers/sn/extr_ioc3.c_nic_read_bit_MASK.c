#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ioc3_driver_data {TYPE_1__* vma; } ;
struct TYPE_2__ {int /*<<< orphan*/  mcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct ioc3_driver_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ioc3_driver_data *idd)
{
	int result;
	unsigned long flags;

	FUNC1(flags);
	FUNC5(FUNC2(6, 13), &idd->vma->mcr);
	result = FUNC3(idd);
	FUNC0(flags);

	FUNC4(500);

	return result;
}