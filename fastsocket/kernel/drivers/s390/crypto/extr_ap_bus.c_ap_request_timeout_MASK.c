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
struct ap_device {scalar_t__ reset; } ;

/* Variables and functions */
 scalar_t__ AP_RESET_ARMED ; 
 scalar_t__ AP_RESET_DO ; 
 int /*<<< orphan*/  ap_tasklet ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct ap_device *ap_dev = (struct ap_device *) data;

	if (ap_dev->reset == AP_RESET_ARMED) {
		ap_dev->reset = AP_RESET_DO;

		if (FUNC0())
			FUNC1(&ap_tasklet);
	}
}