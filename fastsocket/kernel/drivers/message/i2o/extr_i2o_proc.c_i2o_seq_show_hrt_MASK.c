#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_10__ {scalar_t__ virt; } ;
struct i2o_controller {TYPE_1__ hrt; } ;
struct TYPE_18__ {int num_entries; int entry_len; TYPE_8__* hrt_entry; scalar_t__ hrt_version; } ;
typedef  TYPE_9__ i2o_hrt ;
struct TYPE_15__ {int /*<<< orphan*/  PciDeviceID; int /*<<< orphan*/  PciVendorID; int /*<<< orphan*/  PciFunctionNumber; int /*<<< orphan*/  PciDeviceNumber; int /*<<< orphan*/  PciBusNumber; } ;
struct TYPE_14__ {int /*<<< orphan*/  McaSlotNumber; int /*<<< orphan*/  McaBaseMemoryAddress; int /*<<< orphan*/  McaBaseIOPort; } ;
struct TYPE_13__ {int /*<<< orphan*/  EisaSlotNumber; int /*<<< orphan*/  EisaBaseMemoryAddress; int /*<<< orphan*/  EisaBaseIOPort; } ;
struct TYPE_12__ {int /*<<< orphan*/  CSN; int /*<<< orphan*/  IsaBaseMemoryAddress; int /*<<< orphan*/  IsaBaseIOPort; } ;
struct TYPE_11__ {int /*<<< orphan*/  LbBaseMemoryAddress; int /*<<< orphan*/  LbBaseIOPort; } ;
struct TYPE_16__ {TYPE_6__ pci_bus; TYPE_5__ mca_bus; TYPE_4__ eisa_bus; TYPE_3__ isa_bus; TYPE_2__ local_bus; } ;
struct TYPE_17__ {int bus_type; TYPE_7__ bus; int /*<<< orphan*/  parent_tid; int /*<<< orphan*/  adapter_id; } ;

/* Variables and functions */
#define  I2O_BUS_EISA 132 
#define  I2O_BUS_ISA 131 
#define  I2O_BUS_LOCAL 130 
#define  I2O_BUS_MCA 129 
#define  I2O_BUS_PCI 128 
 int /*<<< orphan*/ * bus_strings ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC1(struct seq_file *seq, void *v)
{
	struct i2o_controller *c = (struct i2o_controller *)seq->private;
	i2o_hrt *hrt = (i2o_hrt *) c->hrt.virt;
	u32 bus;
	int i;

	if (hrt->hrt_version) {
		FUNC0(seq,
			   "HRT table for controller is too new a version.\n");
		return 0;
	}

	FUNC0(seq, "HRT has %d entries of %d bytes each.\n",
		   hrt->num_entries, hrt->entry_len << 2);

	for (i = 0; i < hrt->num_entries; i++) {
		FUNC0(seq, "Entry %d:\n", i);
		FUNC0(seq, "   Adapter ID: %0#10x\n",
			   hrt->hrt_entry[i].adapter_id);
		FUNC0(seq, "   Controlling tid: %0#6x\n",
			   hrt->hrt_entry[i].parent_tid);

		if (hrt->hrt_entry[i].bus_type != 0x80) {
			bus = hrt->hrt_entry[i].bus_type;
			FUNC0(seq, "   %s Information\n",
				   bus_strings[bus]);

			switch (bus) {
			case I2O_BUS_LOCAL:
				FUNC0(seq, "     IOBase: %0#6x,",
					   hrt->hrt_entry[i].bus.local_bus.
					   LbBaseIOPort);
				FUNC0(seq, " MemoryBase: %0#10x\n",
					   hrt->hrt_entry[i].bus.local_bus.
					   LbBaseMemoryAddress);
				break;

			case I2O_BUS_ISA:
				FUNC0(seq, "     IOBase: %0#6x,",
					   hrt->hrt_entry[i].bus.isa_bus.
					   IsaBaseIOPort);
				FUNC0(seq, " MemoryBase: %0#10x,",
					   hrt->hrt_entry[i].bus.isa_bus.
					   IsaBaseMemoryAddress);
				FUNC0(seq, " CSN: %0#4x,",
					   hrt->hrt_entry[i].bus.isa_bus.CSN);
				break;

			case I2O_BUS_EISA:
				FUNC0(seq, "     IOBase: %0#6x,",
					   hrt->hrt_entry[i].bus.eisa_bus.
					   EisaBaseIOPort);
				FUNC0(seq, " MemoryBase: %0#10x,",
					   hrt->hrt_entry[i].bus.eisa_bus.
					   EisaBaseMemoryAddress);
				FUNC0(seq, " Slot: %0#4x,",
					   hrt->hrt_entry[i].bus.eisa_bus.
					   EisaSlotNumber);
				break;

			case I2O_BUS_MCA:
				FUNC0(seq, "     IOBase: %0#6x,",
					   hrt->hrt_entry[i].bus.mca_bus.
					   McaBaseIOPort);
				FUNC0(seq, " MemoryBase: %0#10x,",
					   hrt->hrt_entry[i].bus.mca_bus.
					   McaBaseMemoryAddress);
				FUNC0(seq, " Slot: %0#4x,",
					   hrt->hrt_entry[i].bus.mca_bus.
					   McaSlotNumber);
				break;

			case I2O_BUS_PCI:
				FUNC0(seq, "     Bus: %0#4x",
					   hrt->hrt_entry[i].bus.pci_bus.
					   PciBusNumber);
				FUNC0(seq, " Dev: %0#4x",
					   hrt->hrt_entry[i].bus.pci_bus.
					   PciDeviceNumber);
				FUNC0(seq, " Func: %0#4x",
					   hrt->hrt_entry[i].bus.pci_bus.
					   PciFunctionNumber);
				FUNC0(seq, " Vendor: %0#6x",
					   hrt->hrt_entry[i].bus.pci_bus.
					   PciVendorID);
				FUNC0(seq, " Device: %0#6x\n",
					   hrt->hrt_entry[i].bus.pci_bus.
					   PciDeviceID);
				break;

			default:
				FUNC0(seq, "      Unsupported Bus Type\n");
			}
		} else
			FUNC0(seq, "   Unknown Bus Type\n");
	}

	return 0;
}