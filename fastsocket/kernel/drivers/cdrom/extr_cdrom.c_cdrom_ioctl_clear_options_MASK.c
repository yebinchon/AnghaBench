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
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct cdrom_device_info *cdi,
		unsigned long arg)
{
	FUNC0(CD_DO_IOCTL, "entering CDROM_CLEAR_OPTIONS\n");

	cdi->options &= ~(int) arg;
	return cdi->options;
}