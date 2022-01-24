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
struct parisc_device {int dummy; } ;
struct hardware_path {int mod; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MAX_NATIVE_DEVICES ; 
 scalar_t__ NATIVE_DEVICE_OFFSET ; 
 struct parisc_device* FUNC0 (unsigned long,struct hardware_path*) ; 
 struct parisc_device* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct hardware_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct parisc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct parisc_device*) ; 

__attribute__((used)) static void FUNC5(unsigned long io_io_low, unsigned long io_io_high,
                            struct device *parent)
{
	int i, devices_found = 0;
	unsigned long hpa = io_io_low;
	struct hardware_path path;

	FUNC2(parent, &path);
	do {
		for(i = 0; i < MAX_NATIVE_DEVICES; i++, hpa += NATIVE_DEVICE_OFFSET) {
			struct parisc_device *dev;

			/* Was the device already added by Firmware? */
			dev = FUNC1(hpa);
			if (!dev) {
				path.mod = i;
				dev = FUNC0(hpa, &path);
				if (!dev)
					continue;

				FUNC3(dev);
				devices_found++;
			}
			FUNC4(dev);
		}
	} while(!devices_found && hpa < io_io_high);
}