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
struct TYPE_2__ {unsigned int* last_data; } ;
union pci20xxx_subdev_private {scalar_t__ iobase; TYPE_1__ pci20006; } ;
struct comedi_subdevice {union pci20xxx_subdev_private* private; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PCI20006_LCHAN0 ; 
 scalar_t__ PCI20006_LCHAN1 ; 
 scalar_t__ PCI20006_STROBE0 ; 
 scalar_t__ PCI20006_STROBE1 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	union pci20xxx_subdev_private *sdp = s->private;
	int hi, lo;
	unsigned int boarddata;

	sdp->pci20006.last_data[FUNC0(insn->chanspec)] = data[0];
	boarddata = (((unsigned int)data[0] + 0x8000) & 0xffff);	/* comedi-data -> board-data */
	lo = (boarddata & 0xff);
	hi = ((boarddata >> 8) & 0xff);

	switch (FUNC0(insn->chanspec)) {
	case 0:
		FUNC2(lo, sdp->iobase + PCI20006_LCHAN0);
		FUNC2(hi, sdp->iobase + PCI20006_LCHAN0 + 1);
		FUNC2(0x00, sdp->iobase + PCI20006_STROBE0);
		break;
	case 1:
		FUNC2(lo, sdp->iobase + PCI20006_LCHAN1);
		FUNC2(hi, sdp->iobase + PCI20006_LCHAN1 + 1);
		FUNC2(0x00, sdp->iobase + PCI20006_STROBE1);
		break;
	default:
		FUNC1(" comedi%d: pci20xxx: ao channel Error!\n", dev->minor);
		return -EINVAL;
	}

	return 1;
}