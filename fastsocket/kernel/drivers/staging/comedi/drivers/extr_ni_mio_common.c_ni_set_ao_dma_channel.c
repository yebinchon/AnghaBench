
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int AI_AO_Select ;
 unsigned int AO_DMA_Select_Mask ;
 unsigned int AO_DMA_Select_Shift ;
 int ni_set_bitfield (struct comedi_device*,int ,unsigned int,unsigned int) ;
 unsigned int ni_stc_dma_channel_select_bitfield (int) ;

__attribute__((used)) static inline void ni_set_ao_dma_channel(struct comedi_device *dev, int channel)
{
 unsigned bitfield;

 if (channel >= 0) {
  bitfield =
      (ni_stc_dma_channel_select_bitfield(channel) <<
       AO_DMA_Select_Shift) & AO_DMA_Select_Mask;
 } else {
  bitfield = 0;
 }
 ni_set_bitfield(dev, AI_AO_Select, AO_DMA_Select_Mask, bitfield);
}
