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
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_UP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC5(struct platform_device *dev, int width)
{
	unsigned int gpio;
	unsigned int end;

	end = FUNC1(2 + width);

	/* Set all the necessary GPG pins to special-function 0 */
	for (gpio = FUNC1(0); gpio < end; gpio++) {
		FUNC3(gpio, FUNC2(2));
		FUNC4(gpio, S3C_GPIO_PULL_NONE);
	}

	FUNC4(FUNC0(6), S3C_GPIO_PULL_UP);
	FUNC3(FUNC0(6), FUNC2(3));
}