
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 unsigned int Gi_DMA_Enable_Bit ;
 unsigned int Gi_DMA_Int_Bit ;
 unsigned int Gi_DMA_Write_Bit ;
 unsigned int Gi_Read_Acknowledges_Irq ;
 unsigned int Gi_Write_Acknowledges_Irq ;
 int NITIO_Gi_DMA_Config_Reg (int ) ;
 int NITIO_Gi_Input_Select_Reg (int ) ;



 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void ni_tio_configure_dma(struct ni_gpct *counter, short enable,
     short read_not_write)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned input_select_bits = 0;

 if (enable) {
  if (read_not_write) {
   input_select_bits |= Gi_Read_Acknowledges_Irq;
  } else {
   input_select_bits |= Gi_Write_Acknowledges_Irq;
  }
 }
 ni_tio_set_bits(counter,
   NITIO_Gi_Input_Select_Reg(counter->counter_index),
   Gi_Read_Acknowledges_Irq | Gi_Write_Acknowledges_Irq,
   input_select_bits);
 switch (counter_dev->variant) {
 case 129:
  break;
 case 128:
 case 130:
  {
   unsigned gi_dma_config_bits = 0;

   if (enable) {
    gi_dma_config_bits |= Gi_DMA_Enable_Bit;
    gi_dma_config_bits |= Gi_DMA_Int_Bit;
   }
   if (read_not_write == 0) {
    gi_dma_config_bits |= Gi_DMA_Write_Bit;
   }
   ni_tio_set_bits(counter,
     NITIO_Gi_DMA_Config_Reg(counter->
        counter_index),
     Gi_DMA_Enable_Bit | Gi_DMA_Int_Bit |
     Gi_DMA_Write_Bit, gi_dma_config_bits);
  }
  break;
 }
}
