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
struct cx231xx {int devno; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int cx231xx_devused ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct cx231xx *dev)
{
	FUNC2(dev);

	FUNC3(dev);

	/* Release I2C buses */
	FUNC0(dev);

	FUNC1(dev);

	FUNC4(dev->udev);

	/* Mark device as unused */
	cx231xx_devused &= ~(1 << dev->devno);
}