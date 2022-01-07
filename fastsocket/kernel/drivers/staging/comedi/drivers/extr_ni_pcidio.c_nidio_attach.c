
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nidio96_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int async_dma_dir; int * buf_change; int * cancel; int * do_cmdtest; int * do_cmd; int * insn_bits; int * insn_config; int * range_table; int type; } ;
struct comedi_device {unsigned int irq; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {int * options; } ;
struct TYPE_10__ {TYPE_3__* mite; int * di_mite_ring; int mite_channel_lock; } ;
struct TYPE_9__ {scalar_t__ daq_io_addr; TYPE_1__* pcidev; } ;
struct TYPE_8__ {int n_8255; int is_diodaq; scalar_t__ uses_firmware; int name; } ;
struct TYPE_7__ {int dev; } ;


 int COMEDI_SUBD_DIO ;
 scalar_t__ Chip_Version ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int IRQF_SHARED ;
 scalar_t__ Master_DMA_And_Interrupt_Control ;
 scalar_t__ NIDIO_8255_BASE (int) ;
 scalar_t__ Port_IO (int ) ;
 scalar_t__ Port_Pin_Directions (int ) ;
 scalar_t__ Port_Pin_Mask (int ) ;
 int SDF_CMD_READ ;
 int SDF_LSAMPL ;
 int SDF_PACKED ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int alloc_private (struct comedi_device*,int) ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int comedi_set_hw_dev (struct comedi_device*,int *) ;
 TYPE_6__* devpriv ;
 int * mite_alloc_ring (TYPE_3__*) ;
 unsigned int mite_irq (TYPE_3__*) ;
 int mite_setup (TYPE_3__*) ;
 int ni_pcidio_cancel ;
 int ni_pcidio_change ;
 int ni_pcidio_cmd ;
 int ni_pcidio_cmdtest ;
 int ni_pcidio_insn_bits ;
 int ni_pcidio_insn_config ;
 int nidio96_8255_cb ;
 int nidio_find_device (struct comedi_device*,int ,int ) ;
 int nidio_interrupt ;
 int pci_6534_upload_firmware (struct comedi_device*,int *) ;
 int printk (char*,...) ;
 int range_digital ;
 int readb (scalar_t__) ;
 int request_irq (unsigned int,int ,int ,char*,struct comedi_device*) ;
 int spin_lock_init (int *) ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int ,unsigned long) ;
 TYPE_2__* this_board ;
 int writeb (int,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int nidio_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int i;
 int ret;
 int n_subdevices;
 unsigned int irq;

 printk("comedi%d: nidio:", dev->minor);

 if ((ret = alloc_private(dev, sizeof(struct nidio96_private))) < 0)
  return ret;
 spin_lock_init(&devpriv->mite_channel_lock);

 ret = nidio_find_device(dev, it->options[0], it->options[1]);
 if (ret < 0)
  return ret;

 ret = mite_setup(devpriv->mite);
 if (ret < 0) {
  printk("error setting up mite\n");
  return ret;
 }
 comedi_set_hw_dev(dev, &devpriv->mite->pcidev->dev);
 devpriv->di_mite_ring = mite_alloc_ring(devpriv->mite);
 if (devpriv->di_mite_ring == ((void*)0))
  return -ENOMEM;

 dev->board_name = this_board->name;
 irq = mite_irq(devpriv->mite);
 printk(" %s", dev->board_name);
 if (this_board->uses_firmware) {
  ret = pci_6534_upload_firmware(dev, it->options);
  if (ret < 0)
   return ret;
 }
 if (!this_board->is_diodaq) {
  n_subdevices = this_board->n_8255;
 } else {
  n_subdevices = 1;
 }
 if ((ret = alloc_subdevices(dev, n_subdevices)) < 0)
  return ret;

 if (!this_board->is_diodaq) {
  for (i = 0; i < this_board->n_8255; i++) {
   subdev_8255_init(dev, dev->subdevices + i,
      nidio96_8255_cb,
      (unsigned long)(devpriv->mite->
        daq_io_addr +
        NIDIO_8255_BASE(i)));
  }
 } else {

  printk(" rev=%d",
         readb(devpriv->mite->daq_io_addr + Chip_Version));

  s = dev->subdevices + 0;

  dev->read_subdev = s;
  s->type = COMEDI_SUBD_DIO;
  s->subdev_flags =
      SDF_READABLE | SDF_WRITABLE | SDF_LSAMPL | SDF_PACKED |
      SDF_CMD_READ;
  s->n_chan = 32;
  s->range_table = &range_digital;
  s->maxdata = 1;
  s->insn_config = &ni_pcidio_insn_config;
  s->insn_bits = &ni_pcidio_insn_bits;
  s->do_cmd = &ni_pcidio_cmd;
  s->do_cmdtest = &ni_pcidio_cmdtest;
  s->cancel = &ni_pcidio_cancel;
  s->len_chanlist = 32;
  s->buf_change = &ni_pcidio_change;
  s->async_dma_dir = DMA_BIDIRECTIONAL;

  writel(0, devpriv->mite->daq_io_addr + Port_IO(0));
  writel(0, devpriv->mite->daq_io_addr + Port_Pin_Directions(0));
  writel(0, devpriv->mite->daq_io_addr + Port_Pin_Mask(0));


  writeb(0x00,
         devpriv->mite->daq_io_addr +
         Master_DMA_And_Interrupt_Control);

  ret = request_irq(irq, nidio_interrupt, IRQF_SHARED,
      "ni_pcidio", dev);
  if (ret < 0) {
   printk(" irq not available");
  }
  dev->irq = irq;
 }

 printk("\n");

 return 0;
}
