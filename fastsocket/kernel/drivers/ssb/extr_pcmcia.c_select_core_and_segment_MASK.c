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
typedef  int u8 ;
typedef  int u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int mapped_pcmcia_seg; struct ssb_device* mapped_device; } ;

/* Variables and functions */
 int FUNC0 (struct ssb_bus*,struct ssb_device*) ; 
 int FUNC1 (struct ssb_bus*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ssb_device *dev,
				   u16 *offset)
{
	struct ssb_bus *bus = dev->bus;
	int err;
	u8 need_segment;

	if (*offset >= 0x800) {
		*offset -= 0x800;
		need_segment = 1;
	} else
		need_segment = 0;

	if (FUNC2(dev != bus->mapped_device)) {
		err = FUNC0(bus, dev);
		if (FUNC2(err))
			return err;
	}
	if (FUNC2(need_segment != bus->mapped_pcmcia_seg)) {
		err = FUNC1(bus, need_segment);
		if (FUNC2(err))
			return err;
	}

	return 0;
}