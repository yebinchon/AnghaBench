
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {scalar_t__ vendor; scalar_t__ device; int devfn; TYPE_1__* bus; } ;
struct comedi_subdevice {int subdev_flags; int maxdata; int len_chanlist; int type; int * insn_read; int * insn_write; int * range_table; int n_chan; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int board_name; TYPE_4__* board_ptr; int minor; } ;
struct comedi_devconfig {scalar_t__* options; } ;
struct cb_pcimdas_private {int dummy; } ;
struct TYPE_8__ {scalar_t__ device_id; int name; } ;
struct TYPE_7__ {void* BADR4; void* BADR3; void* BADR2; void* BADR1; void* BADR0; struct pci_dev* pci_dev; } ;
struct TYPE_6__ {int device_id; int ai_bits; int ao_bits; scalar_t__ has_dio; int ao_nchan; int ai_se_chans; int name; } ;
struct TYPE_5__ {scalar_t__ number; } ;


 int COMEDI_SUBD_AI ;
 int COMEDI_SUBD_AO ;
 int COMEDI_SUBD_UNUSED ;
 int EIO ;
 int ENOMEM ;
 int N_BOARDS ;
 int PCI_ANY_ID ;
 scalar_t__ PCI_SLOT (int ) ;
 scalar_t__ PCI_VENDOR_ID_COMPUTERBOARDS ;
 int SDF_GROUND ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int * cb_pcimdas_ai_rinsn ;
 int cb_pcimdas_ao_rinsn ;
 int cb_pcimdas_ao_winsn ;
 TYPE_4__* cb_pcimdas_boards ;
 scalar_t__ comedi_pci_enable (struct pci_dev*,char*) ;
 TYPE_3__* devpriv ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int printk (char*,...) ;
 int range_unknown ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,void*) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static int cb_pcimdas_attach(struct comedi_device *dev,
        struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 struct pci_dev *pcidev;
 int index;


 printk("comedi%d: cb_pcimdas: ", dev->minor);




 if (alloc_private(dev, sizeof(struct cb_pcimdas_private)) < 0)
  return -ENOMEM;




 printk("\n");

 for (pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
      pcidev != ((void*)0);
      pcidev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {

  if (pcidev->vendor != PCI_VENDOR_ID_COMPUTERBOARDS)
   continue;

  for (index = 0; index < N_BOARDS; index++) {
   if (cb_pcimdas_boards[index].device_id !=
       pcidev->device)
    continue;

   if (it->options[0] || it->options[1]) {

    if (pcidev->bus->number != it->options[0] ||
        PCI_SLOT(pcidev->devfn) != it->options[1]) {
     continue;
    }
   }
   devpriv->pci_dev = pcidev;
   dev->board_ptr = cb_pcimdas_boards + index;
   goto found;
  }
 }

 printk("No supported ComputerBoards/MeasurementComputing card found on "
        "requested position\n");
 return -EIO;

found:

 printk("Found %s on bus %i, slot %i\n", cb_pcimdas_boards[index].name,
        pcidev->bus->number, PCI_SLOT(pcidev->devfn));


 switch (thisboard->device_id) {
 case 0x56:
  break;
 default:
  printk("THIS CARD IS UNSUPPORTED.\n"
         "PLEASE REPORT USAGE TO <mocelet@sucs.org>\n");
 };

 if (comedi_pci_enable(pcidev, "cb_pcimdas")) {
  printk(" Failed to enable PCI device and request regions\n");
  return -EIO;
 }

 devpriv->BADR0 = pci_resource_start(devpriv->pci_dev, 0);
 devpriv->BADR1 = pci_resource_start(devpriv->pci_dev, 1);
 devpriv->BADR2 = pci_resource_start(devpriv->pci_dev, 2);
 devpriv->BADR3 = pci_resource_start(devpriv->pci_dev, 3);
 devpriv->BADR4 = pci_resource_start(devpriv->pci_dev, 4);
 dev->board_name = thisboard->name;





 if (alloc_subdevices(dev, 3) < 0)
  return -ENOMEM;

 s = dev->subdevices + 0;


 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_GROUND;
 s->n_chan = thisboard->ai_se_chans;
 s->maxdata = (1 << thisboard->ai_bits) - 1;
 s->range_table = &range_unknown;
 s->len_chanlist = 1;

 s->insn_read = cb_pcimdas_ai_rinsn;

 s = dev->subdevices + 1;

 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = thisboard->ao_nchan;
 s->maxdata = 1 << thisboard->ao_bits;
 s->range_table = &range_unknown;
 s->insn_write = &cb_pcimdas_ao_winsn;
 s->insn_read = &cb_pcimdas_ao_rinsn;

 s = dev->subdevices + 2;

 if (thisboard->has_dio) {
  subdev_8255_init(dev, s, ((void*)0), devpriv->BADR4);
 } else {
  s->type = COMEDI_SUBD_UNUSED;
 }

 printk("attached\n");

 return 1;
}
