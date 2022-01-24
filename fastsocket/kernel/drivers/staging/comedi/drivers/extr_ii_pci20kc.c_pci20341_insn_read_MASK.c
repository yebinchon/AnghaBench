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
struct TYPE_2__ {int ai_gain; } ;
union pci20xxx_subdev_private {scalar_t__ iobase; TYPE_1__ pci20341; } ;
struct comedi_subdevice {union pci20xxx_subdev_private* private; } ;
struct comedi_insn {unsigned int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PCI20341_CC_RESET ; 
 scalar_t__ PCI20341_CHAN_LIST ; 
 scalar_t__ PCI20341_CHAN_RESET ; 
 int PCI20341_DAISY_CHAIN ; 
 scalar_t__ PCI20341_LCHAN_ADDR_REG ; 
 scalar_t__ PCI20341_LDATA ; 
 int PCI20341_MUX ; 
 scalar_t__ PCI20341_SOFT_PACER ; 
 scalar_t__ PCI20341_STATUS_REG ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn, unsigned int *data)
{
	union pci20xxx_subdev_private *sdp = s->private;
	unsigned int i = 0, j = 0;
	int lo, hi;
	unsigned char eoc;	/* end of conversion */
	unsigned int clb;	/* channel list byte */
	unsigned int boarddata;

	FUNC3(1, sdp->iobase + PCI20341_LCHAN_ADDR_REG);	/* write number of input channels */
	clb = PCI20341_DAISY_CHAIN | PCI20341_MUX | (sdp->pci20341.ai_gain << 3)
	    | FUNC0(insn->chanspec);
	FUNC3(clb, sdp->iobase + PCI20341_CHAN_LIST);
	FUNC3(0x00, sdp->iobase + PCI20341_CC_RESET);	/* reset settling time counter and trigger delay counter */
	FUNC3(0x00, sdp->iobase + PCI20341_CHAN_RESET);

	/* generate Pacer */

	for (i = 0; i < insn->n; i++) {
		/* data polling isn't the niciest way to get the data, I know,
		 * but there are only 6 cycles (mean) and it is easier than
		 * the whole interrupt stuff
		 */
		j = 0;
		FUNC2(sdp->iobase + PCI20341_SOFT_PACER);	/* generate Pacer */
		eoc = FUNC2(sdp->iobase + PCI20341_STATUS_REG);
		while ((eoc < 0x80) && j < 100) {	/* poll Interrupt Flag */
			j++;
			eoc = FUNC2(sdp->iobase + PCI20341_STATUS_REG);
		}
		if (j >= 100) {
			FUNC1
			    ("comedi%d:  pci20xxx: AI interrupt channel %i polling exit !\n",
			     dev->minor, i);
			return -EINVAL;
		}
		lo = FUNC2(sdp->iobase + PCI20341_LDATA);
		hi = FUNC2(sdp->iobase + PCI20341_LDATA + 1);
		boarddata = lo + 0x100 * hi;
		data[i] = (short)((boarddata + 0x8000) & 0xffff);	/* board-data -> comedi-data */
	}

	return i;
}