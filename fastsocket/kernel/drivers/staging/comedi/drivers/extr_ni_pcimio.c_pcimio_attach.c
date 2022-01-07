
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; TYPE_2__* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {int * options; } ;
struct TYPE_12__ {int reg_type; int name; } ;
struct TYPE_11__ {TYPE_3__* mite; int ** gpct_mite_ring; int * cdo_mite_ring; int * ao_mite_ring; int * ai_mite_ring; int * stc_readl; int * stc_writel; int * stc_readw; int * stc_writew; } ;
struct TYPE_10__ {TYPE_1__* pcidev; } ;
struct TYPE_9__ {int * buf_change; } ;
struct TYPE_8__ {int dev; } ;


 int DRV_NAME ;
 int ENOMEM ;
 size_t NI_AI_SUBDEV ;
 size_t NI_AO_SUBDEV ;
 size_t NI_DIO_SUBDEV ;
 int NI_E_IRQ_FLAGS ;
 size_t NI_GPCT_SUBDEV (int) ;
 TYPE_7__ boardtype ;
 int comedi_set_hw_dev (struct comedi_device*,int *) ;
 TYPE_6__* devpriv ;
 int e_series_win_in ;
 int e_series_win_out ;
 int init_6143 (struct comedi_device*) ;
 int m_series_init_eeprom_buffer (struct comedi_device*) ;
 int m_series_stc_readl ;
 int m_series_stc_readw ;
 int m_series_stc_writel ;
 int m_series_stc_writew ;
 void* mite_alloc_ring (TYPE_3__*) ;
 scalar_t__ mite_irq (TYPE_3__*) ;
 int mite_setup (TYPE_3__*) ;
 int ni_E_init (struct comedi_device*,struct comedi_devconfig*) ;
 int ni_E_interrupt ;
 int ni_alloc_private (struct comedi_device*) ;
 int ni_reg_6143 ;
 int ni_reg_m_series_mask ;
 int pcimio_ai_change ;
 int pcimio_ao_change ;
 int pcimio_dio_change ;
 int pcimio_find_device (struct comedi_device*,int ,int ) ;
 int pcimio_gpct0_change ;
 int pcimio_gpct1_change ;
 int printk (char*,...) ;
 int request_irq (scalar_t__,int ,int ,int ,struct comedi_device*) ;
 int win_in2 ;
 int win_out2 ;

__attribute__((used)) static int pcimio_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int ret;

 printk("comedi%d: ni_pcimio:", dev->minor);

 ret = ni_alloc_private(dev);
 if (ret < 0)
  return ret;

 ret = pcimio_find_device(dev, it->options[0], it->options[1]);
 if (ret < 0)
  return ret;

 printk(" %s", boardtype.name);
 dev->board_name = boardtype.name;

 if (boardtype.reg_type & ni_reg_m_series_mask) {
  devpriv->stc_writew = &m_series_stc_writew;
  devpriv->stc_readw = &m_series_stc_readw;
  devpriv->stc_writel = &m_series_stc_writel;
  devpriv->stc_readl = &m_series_stc_readl;
 } else {
  devpriv->stc_writew = &e_series_win_out;
  devpriv->stc_readw = &e_series_win_in;
  devpriv->stc_writel = &win_out2;
  devpriv->stc_readl = &win_in2;
 }

 ret = mite_setup(devpriv->mite);
 if (ret < 0) {
  printk(" error setting up mite\n");
  return ret;
 }
 comedi_set_hw_dev(dev, &devpriv->mite->pcidev->dev);
 devpriv->ai_mite_ring = mite_alloc_ring(devpriv->mite);
 if (devpriv->ai_mite_ring == ((void*)0))
  return -ENOMEM;
 devpriv->ao_mite_ring = mite_alloc_ring(devpriv->mite);
 if (devpriv->ao_mite_ring == ((void*)0))
  return -ENOMEM;
 devpriv->cdo_mite_ring = mite_alloc_ring(devpriv->mite);
 if (devpriv->cdo_mite_ring == ((void*)0))
  return -ENOMEM;
 devpriv->gpct_mite_ring[0] = mite_alloc_ring(devpriv->mite);
 if (devpriv->gpct_mite_ring[0] == ((void*)0))
  return -ENOMEM;
 devpriv->gpct_mite_ring[1] = mite_alloc_ring(devpriv->mite);
 if (devpriv->gpct_mite_ring[1] == ((void*)0))
  return -ENOMEM;

 if (boardtype.reg_type & ni_reg_m_series_mask)
  m_series_init_eeprom_buffer(dev);
 if (boardtype.reg_type == ni_reg_6143)
  init_6143(dev);

 dev->irq = mite_irq(devpriv->mite);

 if (dev->irq == 0) {
  printk(" unknown irq (bad)\n");
 } else {
  printk(" ( irq = %u )", dev->irq);
  ret = request_irq(dev->irq, ni_E_interrupt, NI_E_IRQ_FLAGS,
      DRV_NAME, dev);
  if (ret < 0) {
   printk(" irq not available\n");
   dev->irq = 0;
  }
 }

 ret = ni_E_init(dev, it);
 if (ret < 0)
  return ret;

 dev->subdevices[NI_AI_SUBDEV].buf_change = &pcimio_ai_change;
 dev->subdevices[NI_AO_SUBDEV].buf_change = &pcimio_ao_change;
 dev->subdevices[NI_GPCT_SUBDEV(0)].buf_change = &pcimio_gpct0_change;
 dev->subdevices[NI_GPCT_SUBDEV(1)].buf_change = &pcimio_gpct1_change;
 dev->subdevices[NI_DIO_SUBDEV].buf_change = &pcimio_dio_change;

 return ret;
}
