
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* dma_configuration_soft_copies; } ;


 int DMAConfigRegister ;
 int IOConfigReg (unsigned int) ;
 unsigned int MAX_DMA_CHANNEL ;
 unsigned int NUM_PFI_CHANNELS ;
 int dma_select_bits (unsigned int,int ) ;
 int dma_select_mask (unsigned int) ;
 int dma_selection_none ;
 int ni_660x_write_register (struct comedi_device*,int,int,int ) ;
 TYPE_1__* private (struct comedi_device*) ;

__attribute__((used)) static void init_tio_chip(struct comedi_device *dev, int chipset)
{
 unsigned i;


 private(dev)->dma_configuration_soft_copies[chipset] = 0;
 for (i = 0; i < MAX_DMA_CHANNEL; ++i) {
  private(dev)->dma_configuration_soft_copies[chipset] |=
      dma_select_bits(i, dma_selection_none) & dma_select_mask(i);
 }
 ni_660x_write_register(dev, chipset,
          private(dev)->
          dma_configuration_soft_copies[chipset],
          DMAConfigRegister);
 for (i = 0; i < NUM_PFI_CHANNELS; ++i) {
  ni_660x_write_register(dev, chipset, 0, IOConfigReg(i));
 }
}
