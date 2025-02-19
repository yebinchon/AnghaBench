
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u32 ;
struct seq_file {scalar_t__ private; } ;
struct TYPE_10__ {scalar_t__ virt; } ;
struct i2o_controller {TYPE_1__ hrt; } ;
struct TYPE_18__ {int num_entries; int entry_len; TYPE_8__* hrt_entry; scalar_t__ hrt_version; } ;
typedef TYPE_9__ i2o_hrt ;
struct TYPE_15__ {int PciDeviceID; int PciVendorID; int PciFunctionNumber; int PciDeviceNumber; int PciBusNumber; } ;
struct TYPE_14__ {int McaSlotNumber; int McaBaseMemoryAddress; int McaBaseIOPort; } ;
struct TYPE_13__ {int EisaSlotNumber; int EisaBaseMemoryAddress; int EisaBaseIOPort; } ;
struct TYPE_12__ {int CSN; int IsaBaseMemoryAddress; int IsaBaseIOPort; } ;
struct TYPE_11__ {int LbBaseMemoryAddress; int LbBaseIOPort; } ;
struct TYPE_16__ {TYPE_6__ pci_bus; TYPE_5__ mca_bus; TYPE_4__ eisa_bus; TYPE_3__ isa_bus; TYPE_2__ local_bus; } ;
struct TYPE_17__ {int bus_type; TYPE_7__ bus; int parent_tid; int adapter_id; } ;







 int * bus_strings ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int i2o_seq_show_hrt(struct seq_file *seq, void *v)
{
 struct i2o_controller *c = (struct i2o_controller *)seq->private;
 i2o_hrt *hrt = (i2o_hrt *) c->hrt.virt;
 u32 bus;
 int i;

 if (hrt->hrt_version) {
  seq_printf(seq,
      "HRT table for controller is too new a version.\n");
  return 0;
 }

 seq_printf(seq, "HRT has %d entries of %d bytes each.\n",
     hrt->num_entries, hrt->entry_len << 2);

 for (i = 0; i < hrt->num_entries; i++) {
  seq_printf(seq, "Entry %d:\n", i);
  seq_printf(seq, "   Adapter ID: %0#10x\n",
      hrt->hrt_entry[i].adapter_id);
  seq_printf(seq, "   Controlling tid: %0#6x\n",
      hrt->hrt_entry[i].parent_tid);

  if (hrt->hrt_entry[i].bus_type != 0x80) {
   bus = hrt->hrt_entry[i].bus_type;
   seq_printf(seq, "   %s Information\n",
       bus_strings[bus]);

   switch (bus) {
   case 130:
    seq_printf(seq, "     IOBase: %0#6x,",
        hrt->hrt_entry[i].bus.local_bus.
        LbBaseIOPort);
    seq_printf(seq, " MemoryBase: %0#10x\n",
        hrt->hrt_entry[i].bus.local_bus.
        LbBaseMemoryAddress);
    break;

   case 131:
    seq_printf(seq, "     IOBase: %0#6x,",
        hrt->hrt_entry[i].bus.isa_bus.
        IsaBaseIOPort);
    seq_printf(seq, " MemoryBase: %0#10x,",
        hrt->hrt_entry[i].bus.isa_bus.
        IsaBaseMemoryAddress);
    seq_printf(seq, " CSN: %0#4x,",
        hrt->hrt_entry[i].bus.isa_bus.CSN);
    break;

   case 132:
    seq_printf(seq, "     IOBase: %0#6x,",
        hrt->hrt_entry[i].bus.eisa_bus.
        EisaBaseIOPort);
    seq_printf(seq, " MemoryBase: %0#10x,",
        hrt->hrt_entry[i].bus.eisa_bus.
        EisaBaseMemoryAddress);
    seq_printf(seq, " Slot: %0#4x,",
        hrt->hrt_entry[i].bus.eisa_bus.
        EisaSlotNumber);
    break;

   case 129:
    seq_printf(seq, "     IOBase: %0#6x,",
        hrt->hrt_entry[i].bus.mca_bus.
        McaBaseIOPort);
    seq_printf(seq, " MemoryBase: %0#10x,",
        hrt->hrt_entry[i].bus.mca_bus.
        McaBaseMemoryAddress);
    seq_printf(seq, " Slot: %0#4x,",
        hrt->hrt_entry[i].bus.mca_bus.
        McaSlotNumber);
    break;

   case 128:
    seq_printf(seq, "     Bus: %0#4x",
        hrt->hrt_entry[i].bus.pci_bus.
        PciBusNumber);
    seq_printf(seq, " Dev: %0#4x",
        hrt->hrt_entry[i].bus.pci_bus.
        PciDeviceNumber);
    seq_printf(seq, " Func: %0#4x",
        hrt->hrt_entry[i].bus.pci_bus.
        PciFunctionNumber);
    seq_printf(seq, " Vendor: %0#6x",
        hrt->hrt_entry[i].bus.pci_bus.
        PciVendorID);
    seq_printf(seq, " Device: %0#6x\n",
        hrt->hrt_entry[i].bus.pci_bus.
        PciDeviceID);
    break;

   default:
    seq_printf(seq, "      Unsupported Bus Type\n");
   }
  } else
   seq_printf(seq, "   Unknown Bus Type\n");
 }

 return 0;
}
