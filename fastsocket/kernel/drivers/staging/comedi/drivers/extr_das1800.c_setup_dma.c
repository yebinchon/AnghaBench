
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {int irq_dma_bits; int dma1; int dma_transfer_size; int ai_buf1; int dma0; int ai_buf0; int dma_current_buf; int dma_current; } ;


 int DMA_DUAL ;
 int DMA_ENABLED ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 TYPE_1__* devpriv ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int ) ;
 int suggest_transfer_size (struct comedi_cmd*) ;
 int virt_to_bus (int ) ;

__attribute__((used)) static void setup_dma(struct comedi_device *dev, struct comedi_cmd cmd)
{
 unsigned long lock_flags;
 const int dual_dma = devpriv->irq_dma_bits & DMA_DUAL;

 if ((devpriv->irq_dma_bits & DMA_ENABLED) == 0)
  return;


 devpriv->dma_transfer_size = suggest_transfer_size(&cmd);
 lock_flags = claim_dma_lock();
 disable_dma(devpriv->dma0);


 clear_dma_ff(devpriv->dma0);
 set_dma_addr(devpriv->dma0, virt_to_bus(devpriv->ai_buf0));

 set_dma_count(devpriv->dma0, devpriv->dma_transfer_size);
 devpriv->dma_current = devpriv->dma0;
 devpriv->dma_current_buf = devpriv->ai_buf0;
 enable_dma(devpriv->dma0);

 if (dual_dma) {
  disable_dma(devpriv->dma1);


  clear_dma_ff(devpriv->dma1);
  set_dma_addr(devpriv->dma1, virt_to_bus(devpriv->ai_buf1));

  set_dma_count(devpriv->dma1, devpriv->dma_transfer_size);
  enable_dma(devpriv->dma1);
 }
 release_dma_lock(lock_flags);

 return;
}
