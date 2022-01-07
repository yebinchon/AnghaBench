
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_channels; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int SH_EECR ;
 TYPE_1__** edma_info ;
 int edma_shadow0_write_array (unsigned int,int ,unsigned int,unsigned int) ;

void edma_pause(unsigned channel)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(channel);
 channel = EDMA_CHAN_SLOT(channel);

 if (channel < edma_info[ctlr]->num_channels) {
  unsigned int mask = (1 << (channel & 0x1f));

  edma_shadow0_write_array(ctlr, SH_EECR, channel >> 5, mask);
 }
}
