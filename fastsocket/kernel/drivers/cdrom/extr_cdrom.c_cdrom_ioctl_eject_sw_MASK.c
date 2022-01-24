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
struct cdrom_device_info {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_OPEN_TRAY ; 
 int CDO_AUTO_CLOSE ; 
 int CDO_AUTO_EJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int EBUSY ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ keeplocked ; 

__attribute__((used)) static int FUNC2(struct cdrom_device_info *cdi,
		unsigned long arg)
{
	FUNC1(CD_DO_IOCTL, "entering CDROMEJECT_SW\n");

	if (!FUNC0(CDC_OPEN_TRAY))
		return -ENOSYS;
	if (keeplocked)
		return -EBUSY;

	cdi->options &= ~(CDO_AUTO_CLOSE | CDO_AUTO_EJECT);
	if (arg)
		cdi->options |= CDO_AUTO_CLOSE | CDO_AUTO_EJECT;
	return 0;
}