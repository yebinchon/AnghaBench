
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_channels; } ;


 int EDMA_CCERRCLR ;
 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int EDMA_EMCR ;
 int EDMA_EMR ;
 int SH_ECR ;
 int SH_SECR ;
 TYPE_1__** edma_info ;
 int edma_read_array (unsigned int,int ,int) ;
 int edma_shadow0_write_array (unsigned int,int ,int,unsigned int) ;
 int edma_write (unsigned int,int ,int) ;
 int edma_write_array (unsigned int,int ,int,unsigned int) ;
 int pr_debug (char*,int,int ) ;

void edma_clean_channel(unsigned channel)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(channel);
 channel = EDMA_CHAN_SLOT(channel);

 if (channel < edma_info[ctlr]->num_channels) {
  int j = (channel >> 5);
  unsigned int mask = 1 << (channel & 0x1f);

  pr_debug("EDMA: EMR%d %08x\n", j,
    edma_read_array(ctlr, EDMA_EMR, j));
  edma_shadow0_write_array(ctlr, SH_ECR, j, mask);

  edma_write_array(ctlr, EDMA_EMCR, j, mask);

  edma_shadow0_write_array(ctlr, SH_SECR, j, mask);
  edma_write(ctlr, EDMA_CCERRCLR, (1 << 16) | 0x3);
 }
}
