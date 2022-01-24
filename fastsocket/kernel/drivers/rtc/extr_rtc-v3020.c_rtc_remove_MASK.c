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
struct v3020 {TYPE_1__* ops; struct rtc_device* rtc; } ;
struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmap_io ) (struct v3020*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v3020*) ; 
 struct v3020* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct v3020*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct v3020 *chip = FUNC1(dev);
	struct rtc_device *rtc = chip->rtc;

	if (rtc)
		FUNC2(rtc);

	chip->ops->unmap_io(chip);
	FUNC0(chip);

	return 0;
}