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
struct ssb_device {int dummy; } ;
struct ssb_bus {int nr_devices; struct ssb_device* devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_device*) ; 

__attribute__((used)) static void FUNC2(struct ssb_bus *bus)
{
	int i;
	for (i = 0; i < bus->nr_devices; i++) {
		struct ssb_device *dev;
		dev = &(bus->devices[i]);
		FUNC0(dev, FUNC1(dev));
	}
}