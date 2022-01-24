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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct ata_device {int /*<<< orphan*/ * gscr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(struct ata_device *dev, const u32 *new_gscr)
{
	const u32 *old_gscr = dev->gscr;
	u16 old_vendor, new_vendor, old_devid, new_devid;
	int old_nr_ports, new_nr_ports;

	old_vendor = FUNC3(old_gscr);
	new_vendor = FUNC3(new_gscr);
	old_devid = FUNC1(old_gscr);
	new_devid = FUNC1(new_gscr);
	old_nr_ports = FUNC2(old_gscr);
	new_nr_ports = FUNC2(new_gscr);

	if (old_vendor != new_vendor) {
		FUNC0(dev, KERN_INFO, "Port Multiplier "
			       "vendor mismatch '0x%x' != '0x%x'\n",
			       old_vendor, new_vendor);
		return 0;
	}

	if (old_devid != new_devid) {
		FUNC0(dev, KERN_INFO, "Port Multiplier "
			       "device ID mismatch '0x%x' != '0x%x'\n",
			       old_devid, new_devid);
		return 0;
	}

	if (old_nr_ports != new_nr_ports) {
		FUNC0(dev, KERN_INFO, "Port Multiplier "
			       "nr_ports mismatch '0x%x' != '0x%x'\n",
			       old_nr_ports, new_nr_ports);
		return 0;
	}

	return 1;
}