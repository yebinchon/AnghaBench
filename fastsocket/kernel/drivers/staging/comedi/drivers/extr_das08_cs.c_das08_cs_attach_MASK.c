#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long BasePort1; } ;
struct pcmcia_device {TYPE_1__ io; } ;
struct das08_private_struct {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_4__ {scalar_t__ bustype; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct comedi_device*,int) ; 
 struct pcmcia_device* cur_dev ; 
 int FUNC1 (struct comedi_device*,unsigned long) ; 
 scalar_t__ pcmcia ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			   struct comedi_devconfig *it)
{
	int ret;
	unsigned long iobase;
	struct pcmcia_device *link = cur_dev;	/*  XXX hack */

	ret = FUNC0(dev, sizeof(struct das08_private_struct));
	if (ret < 0)
		return ret;

	FUNC2("comedi%d: das08_cs: ", dev->minor);
	/*  deal with a pci board */

	if (thisboard->bustype == pcmcia) {
		if (link == NULL) {
			FUNC2(" no pcmcia cards found\n");
			return -EIO;
		}
		iobase = link->io.BasePort1;
	} else {
		FUNC2(" bug! board does not have PCMCIA bustype\n");
		return -EINVAL;
	}

	FUNC2("\n");

	return FUNC1(dev, iobase);
}