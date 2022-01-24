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
struct ap_device {int unregistered; scalar_t__ reset; } ;

/* Variables and functions */
 scalar_t__ AP_RESET_DO ; 
 scalar_t__ FUNC0 (struct ap_device*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct ap_device*) ; 

__attribute__((used)) static int FUNC2(struct ap_device *ap_dev, unsigned long *flags)
{
	if (!ap_dev->unregistered) {
		if (FUNC0(ap_dev, flags))
			ap_dev->unregistered = 1;
		if (ap_dev->reset == AP_RESET_DO)
			FUNC1(ap_dev);
	}
	return 0;
}