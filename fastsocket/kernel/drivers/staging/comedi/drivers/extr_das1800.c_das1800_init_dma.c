
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; } ;
struct TYPE_4__ {unsigned int dma0; unsigned int dma_current; unsigned int dma1; int * ai_buf1; int * ai_buf0; int * dma_current_buf; int dma_bits; } ;
struct TYPE_3__ {int driver_name; } ;


 int DMA_BUF_SIZE ;
 int DMA_CH5 ;
 int DMA_CH5_CH6 ;
 int DMA_CH6 ;
 int DMA_CH6_CH7 ;
 int DMA_CH7 ;
 int DMA_CH7_CH5 ;
 int DMA_MODE_READ ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 unsigned long claim_dma_lock () ;
 TYPE_2__* devpriv ;
 int disable_dma (unsigned int) ;
 TYPE_1__ driver_das1800 ;
 void* kmalloc (int ,int) ;
 int printk (char*,...) ;
 int release_dma_lock (unsigned long) ;
 scalar_t__ request_dma (unsigned int,int ) ;
 int set_dma_mode (unsigned int,int ) ;

__attribute__((used)) static int das1800_init_dma(struct comedi_device *dev, unsigned int dma0,
       unsigned int dma1)
{
 unsigned long flags;


 if (dev->irq && dma0) {

  switch ((dma0 & 0x7) | (dma1 << 4)) {
  case 0x5:
   devpriv->dma_bits |= DMA_CH5;
   break;
  case 0x6:
   devpriv->dma_bits |= DMA_CH6;
   break;
  case 0x7:
   devpriv->dma_bits |= DMA_CH7;
   break;
  case 0x65:
   devpriv->dma_bits |= DMA_CH5_CH6;
   break;
  case 0x76:
   devpriv->dma_bits |= DMA_CH6_CH7;
   break;
  case 0x57:
   devpriv->dma_bits |= DMA_CH7_CH5;
   break;
  default:
   printk(" only supports dma channels 5 through 7\n"
          " Dual dma only allows the following combinations:\n"
          " dma 5,6 / 6,7 / or 7,5\n");
   return -EINVAL;
   break;
  }
  if (request_dma(dma0, driver_das1800.driver_name)) {
   printk(" failed to allocate dma channel %i\n", dma0);
   return -EINVAL;
  }
  devpriv->dma0 = dma0;
  devpriv->dma_current = dma0;
  if (dma1) {
   if (request_dma(dma1, driver_das1800.driver_name)) {
    printk(" failed to allocate dma channel %i\n",
           dma1);
    return -EINVAL;
   }
   devpriv->dma1 = dma1;
  }
  devpriv->ai_buf0 = kmalloc(DMA_BUF_SIZE, GFP_KERNEL | GFP_DMA);
  if (devpriv->ai_buf0 == ((void*)0))
   return -ENOMEM;
  devpriv->dma_current_buf = devpriv->ai_buf0;
  if (dma1) {
   devpriv->ai_buf1 =
       kmalloc(DMA_BUF_SIZE, GFP_KERNEL | GFP_DMA);
   if (devpriv->ai_buf1 == ((void*)0))
    return -ENOMEM;
  }
  flags = claim_dma_lock();
  disable_dma(devpriv->dma0);
  set_dma_mode(devpriv->dma0, DMA_MODE_READ);
  if (dma1) {
   disable_dma(devpriv->dma1);
   set_dma_mode(devpriv->dma1, DMA_MODE_READ);
  }
  release_dma_lock(flags);
 }
 return 0;
}
