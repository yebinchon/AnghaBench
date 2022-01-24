#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int subsystem_vendor; scalar_t__ subsystem_device; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct daqboard2000_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  insn_write; int /*<<< orphan*/  insn_read; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; TYPE_4__* board_ptr; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {int* options; } ;
struct TYPE_8__ {int id; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int got_regions; void* daq; void* plx; struct pci_dev* pci_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int number; } ;

/* Variables and functions */
 size_t COMEDI_DEVCONF_AUX_DATA_LENGTH ; 
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int /*<<< orphan*/  DAQBOARD2000_DAQ_SIZE ; 
 int /*<<< orphan*/  DAQBOARD2000_PLX_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SDF_GROUND ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*,int) ; 
 TYPE_4__* boardtypes ; 
 void* FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  daqboard2000_8255_cb ; 
 int /*<<< orphan*/  daqboard2000_ai_insn_read ; 
 int /*<<< orphan*/  daqboard2000_ao_insn_read ; 
 int /*<<< orphan*/  daqboard2000_ao_insn_write ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*) ; 
 TYPE_3__* devpriv ; 
 int FUNC7 (struct comedi_device*,void*,unsigned int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int n_boardtypes ; 
 struct pci_dev* FUNC9 (int,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  range_daqboard2000_ai ; 
 int /*<<< orphan*/  range_daqboard2000_ao ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_2__* this_board ; 

__attribute__((used)) static int FUNC14(struct comedi_device *dev,
			       struct comedi_devconfig *it)
{
	int result = 0;
	struct comedi_subdevice *s;
	struct pci_dev *card = NULL;
	void *aux_data;
	unsigned int aux_len;
	int bus, slot;

	FUNC11("comedi%d: daqboard2000:", dev->minor);

	bus = it->options[0];
	slot = it->options[1];

	result = FUNC1(dev, sizeof(struct daqboard2000_private));
	if (result < 0) {
		return -ENOMEM;
	}
	for (card = FUNC9(0x1616, 0x0409, NULL);
	     card != NULL; card = FUNC9(0x1616, 0x0409, card)) {
		if (bus || slot) {
			/* requested particular bus/slot */
			if (card->bus->number != bus ||
			    FUNC0(card->devfn) != slot) {
				continue;
			}
		}
		break;		/* found one */
	}
	if (!card) {
		if (bus || slot)
			FUNC11(" no daqboard2000 found at bus/slot: %d/%d\n",
			       bus, slot);
		else
			FUNC11(" no daqboard2000 found\n");
		return -EIO;
	} else {
		u32 id;
		int i;
		devpriv->pci_dev = card;
		id = ((u32) card->
		      subsystem_device << 16) | card->subsystem_vendor;
		for (i = 0; i < n_boardtypes; i++) {
			if (boardtypes[i].id == id) {
				FUNC11(" %s", boardtypes[i].name);
				dev->board_ptr = boardtypes + i;
			}
		}
		if (!dev->board_ptr) {
			FUNC11
			    (" unknown subsystem id %08x (pretend it is an ids2)",
			     id);
			dev->board_ptr = boardtypes;
		}
	}

	result = FUNC4(card, "daqboard2000");
	if (result < 0) {
		FUNC11(" failed to enable PCI device and request regions\n");
		return -EIO;
	}
	devpriv->got_regions = 1;
	devpriv->plx =
	    FUNC8(FUNC10(card, 0), DAQBOARD2000_PLX_SIZE);
	devpriv->daq =
	    FUNC8(FUNC10(card, 2), DAQBOARD2000_DAQ_SIZE);
	if (!devpriv->plx || !devpriv->daq) {
		return -ENOMEM;
	}

	result = FUNC2(dev, 3);
	if (result < 0)
		goto out;

	FUNC12(devpriv->plx + 0x6c);

	/*
	   u8 interrupt;
	   Windows code does restore interrupts, but since we don't use them...
	   pci_read_config_byte(card, PCI_INTERRUPT_LINE, &interrupt);
	   printk("Interrupt before is: %x\n", interrupt);
	 */

	aux_data = FUNC3(it->options, 0);
	aux_len = it->options[COMEDI_DEVCONF_AUX_DATA_LENGTH];

	if (aux_data && aux_len) {
		result = FUNC7(dev, aux_data, aux_len);
	} else {
		FUNC11("no FPGA initialization code, aborting\n");
		result = -EIO;
	}
	if (result < 0)
		goto out;
	FUNC5(dev);
	FUNC6(dev);
	/*
	   Windows code does restore interrupts, but since we don't use them...
	   pci_read_config_byte(card, PCI_INTERRUPT_LINE, &interrupt);
	   printk("Interrupt after is: %x\n", interrupt);
	 */

	dev->iobase = (unsigned long)devpriv->daq;

	dev->board_name = this_board->name;

	s = dev->subdevices + 0;
	/* ai subdevice */
	s->type = COMEDI_SUBD_AI;
	s->subdev_flags = SDF_READABLE | SDF_GROUND;
	s->n_chan = 24;
	s->maxdata = 0xffff;
	s->insn_read = daqboard2000_ai_insn_read;
	s->range_table = &range_daqboard2000_ai;

	s = dev->subdevices + 1;
	/* ao subdevice */
	s->type = COMEDI_SUBD_AO;
	s->subdev_flags = SDF_WRITABLE;
	s->n_chan = 2;
	s->maxdata = 0xffff;
	s->insn_read = daqboard2000_ao_insn_read;
	s->insn_write = daqboard2000_ao_insn_write;
	s->range_table = &range_daqboard2000_ao;

	s = dev->subdevices + 2;
	result = FUNC13(dev, s, daqboard2000_8255_cb,
				  (unsigned long)(dev->iobase + 0x40));

	FUNC11("\n");
out:
	return result;
}