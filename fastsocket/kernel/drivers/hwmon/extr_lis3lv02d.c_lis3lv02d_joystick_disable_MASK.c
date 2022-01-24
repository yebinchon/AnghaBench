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
struct TYPE_2__ {int /*<<< orphan*/ * idev; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ lis3_dev ; 
 int /*<<< orphan*/  lis3lv02d_misc_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	if (!lis3_dev.idev)
		return;

	if (lis3_dev.irq)
		FUNC1(&lis3lv02d_misc_device);
	FUNC0(lis3_dev.idev);
	lis3_dev.idev = NULL;
}