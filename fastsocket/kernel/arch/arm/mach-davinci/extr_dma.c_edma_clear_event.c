
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_channels; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int EDMA_ECR ;
 int EDMA_ECRH ;
 TYPE_1__** edma_info ;
 int edma_write (unsigned int,int ,int) ;

void edma_clear_event(unsigned channel)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(channel);
 channel = EDMA_CHAN_SLOT(channel);

 if (channel >= edma_info[ctlr]->num_channels)
  return;
 if (channel < 32)
  edma_write(ctlr, EDMA_ECR, 1 << channel);
 else
  edma_write(ctlr, EDMA_ECRH, 1 << (channel - 32));
}
