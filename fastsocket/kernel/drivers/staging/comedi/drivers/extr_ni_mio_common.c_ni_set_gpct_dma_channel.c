
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int G0_G1_Select ;
 unsigned int GPCT_DMA_Select_Bits (unsigned int,int) ;
 int GPCT_DMA_Select_Mask (unsigned int) ;
 int ni_set_bitfield (struct comedi_device*,int ,int ,unsigned int) ;

__attribute__((used)) static inline void ni_set_gpct_dma_channel(struct comedi_device *dev,
        unsigned gpct_index,
        int mite_channel)
{
 unsigned bitfield;

 if (mite_channel >= 0) {
  bitfield = GPCT_DMA_Select_Bits(gpct_index, mite_channel);
 } else {
  bitfield = 0;
 }
 ni_set_bitfield(dev, G0_G1_Select, GPCT_DMA_Select_Mask(gpct_index),
   bitfield);
}
