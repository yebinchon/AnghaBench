#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  coreid; } ;
struct ssb_device {int core_index; TYPE_1__ id; } ;
struct ssb_bus {scalar_t__ sdio_sbaddr; struct ssb_device* mapped_device; } ;

/* Variables and functions */
 int SSB_CORE_SIZE ; 
 scalar_t__ SSB_ENUM_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_bus*) ; 
 int FUNC4 (struct ssb_bus*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ssb_bus *bus, struct ssb_device *dev)
{
	u8 coreidx = dev->core_index;
	u32 sbaddr;
	int error = 0;

	sbaddr = (coreidx * SSB_CORE_SIZE) + SSB_ENUM_BASE;
	if (FUNC5(bus->sdio_sbaddr != sbaddr)) {
#if SSB_VERBOSE_SDIOCORESWITCH_DEBUG
		dev_info(ssb_sdio_dev(bus),
			   "switching to %s core, index %d\n",
			   ssb_core_name(dev->id.coreid), coreidx);
#endif
		error = FUNC4(bus, sbaddr);
		if (error) {
			FUNC0(FUNC3(bus), "failed to switch to"
				" core %u, error %d\n", coreidx, error);
			goto out;
		}
		bus->mapped_device = dev;
	}

out:
	return error;
}