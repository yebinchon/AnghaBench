#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {int /*<<< orphan*/  flags; TYPE_2__ dev; TYPE_1__* ops; } ;
struct inode {int dummy; } ;
struct file {struct rtc_device* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_DEV_BUSY ; 
 int /*<<< orphan*/  RTC_UIE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct rtc_device *rtc = file->private_data;

	/* We shut down the repeating IRQs that userspace enabled,
	 * since nothing is listening to them.
	 *  - Update (UIE) ... currently only managed through ioctls
	 *  - Periodic (PIE) ... also used through rtc_*() interface calls
	 *
	 * Leave the alarm alone; it may be set to trigger a system wakeup
	 * later, or be used by kernel code, and is a one-shot event anyway.
	 */

	/* Keep ioctl until all drivers are converted */
	FUNC1(file, RTC_UIE_OFF, 0);
	FUNC3(rtc, 0);
	FUNC2(rtc, NULL, 0);

	if (rtc->ops->release)
		rtc->ops->release(rtc->dev.parent);

	FUNC0(RTC_DEV_BUSY, &rtc->flags);
	return 0;
}