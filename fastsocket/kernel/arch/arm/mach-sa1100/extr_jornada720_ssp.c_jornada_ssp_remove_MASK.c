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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_GPIO25 ; 
 int /*<<< orphan*/  GPSR ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct platform_device *dev)
{
	/* Note that this doesnt actually remove the driver, since theres nothing to remove
	 * It just makes sure everything is turned off */
	GPSR = GPIO_GPIO25;
	FUNC0();
	return 0;
}