
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_channels; int edma_inuse; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 scalar_t__ PARM_OFFSET (unsigned int) ;
 int PARM_SIZE ;
 int clear_bit (unsigned int,int ) ;
 int dummy_paramset ;
 TYPE_1__** edma_info ;
 scalar_t__* edmacc_regs_base ;
 int memcpy_toio (scalar_t__,int *,int ) ;
 int setup_dma_interrupt (unsigned int,int *,int *) ;

void edma_free_channel(unsigned channel)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(channel);
 channel = EDMA_CHAN_SLOT(channel);

 if (channel >= edma_info[ctlr]->num_channels)
  return;

 setup_dma_interrupt(channel, ((void*)0), ((void*)0));


 memcpy_toio(edmacc_regs_base[ctlr] + PARM_OFFSET(channel),
   &dummy_paramset, PARM_SIZE);
 clear_bit(channel, edma_info[ctlr]->edma_inuse);
}
