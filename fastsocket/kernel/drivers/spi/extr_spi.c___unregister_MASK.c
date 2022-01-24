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
typedef  void device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *master_dev)
{
	/* note: before about 2.6.14-rc1 this would corrupt memory: */
	if (dev != master_dev)
		FUNC0(FUNC1(dev));
	return 0;
}