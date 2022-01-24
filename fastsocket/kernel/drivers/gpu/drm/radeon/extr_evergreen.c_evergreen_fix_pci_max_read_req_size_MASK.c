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
typedef  int u16 ;
struct radeon_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_READRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct radeon_device *rdev)
{
	u16 ctl, v;
	int err;

	err = FUNC0(rdev->pdev, PCI_EXP_DEVCTL, &ctl);
	if (err)
		return;

	v = (ctl & PCI_EXP_DEVCTL_READRQ) >> 12;

	/* if bios or OS sets MAX_READ_REQUEST_SIZE to an invalid value, fix it
	 * to avoid hangs or perfomance issues
	 */
	if ((v == 0) || (v == 6) || (v == 7)) {
		ctl &= ~PCI_EXP_DEVCTL_READRQ;
		ctl |= (2 << 12);
		FUNC1(rdev->pdev, PCI_EXP_DEVCTL, ctl);
	}
}