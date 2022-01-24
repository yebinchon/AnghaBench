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
typedef  scalar_t__ u32 ;
struct isci_remote_device {int /*<<< orphan*/  owning_port; int /*<<< orphan*/  flags; int /*<<< orphan*/  domain_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDEV_RNC_LLHANG_ENABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(
	struct isci_remote_device *idev,
	u32 timeout)
{
	if (FUNC0(idev->domain_dev)) {
		if (timeout) {
			if (FUNC3(IDEV_RNC_LLHANG_ENABLED,
					     &idev->flags))
				return;  /* Already enabled. */
		} else if (!FUNC2(IDEV_RNC_LLHANG_ENABLED,
					       &idev->flags))
			return;  /* Not enabled. */

		FUNC1(idev->owning_port,
						    timeout);
	}
}