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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {scalar_t__ mmio; struct ssb_device* mapped_device; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct ssb_bus*) ; 
 int FUNC2 (struct ssb_bus*,struct ssb_device*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static u32 FUNC4(struct ssb_device *dev, u16 offset)
{
	struct ssb_bus *bus = dev->bus;

	if (FUNC3(FUNC1(bus)))
		return 0xFFFFFFFF;
	if (FUNC3(bus->mapped_device != dev)) {
		if (FUNC3(FUNC2(bus, dev)))
			return 0xFFFFFFFF;
	}
	return FUNC0(bus->mmio + offset);
}