
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_channels; int edma_noevent; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int EDMA_EMCR ;
 int EINVAL ;
 int SH_EER ;
 int SH_EESR ;
 int SH_ER ;
 int SH_ESR ;
 int SH_SECR ;
 TYPE_1__** edma_info ;
 int edma_shadow0_read_array (unsigned int,int ,int) ;
 int edma_shadow0_write_array (unsigned int,int ,int,unsigned int) ;
 int edma_write_array (unsigned int,int ,int,unsigned int) ;
 int pr_debug (char*,int,int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;

int edma_start(unsigned channel)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(channel);
 channel = EDMA_CHAN_SLOT(channel);

 if (channel < edma_info[ctlr]->num_channels) {
  int j = channel >> 5;
  unsigned int mask = (1 << (channel & 0x1f));


  if (test_bit(channel, edma_info[ctlr]->edma_noevent)) {
   pr_debug("EDMA: ESR%d %08x\n", j,
    edma_shadow0_read_array(ctlr, SH_ESR, j));
   edma_shadow0_write_array(ctlr, SH_ESR, j, mask);
   return 0;
  }


  pr_debug("EDMA: ER%d %08x\n", j,
   edma_shadow0_read_array(ctlr, SH_ER, j));

  edma_write_array(ctlr, EDMA_EMCR, j, mask);

  edma_shadow0_write_array(ctlr, SH_SECR, j, mask);
  edma_shadow0_write_array(ctlr, SH_EESR, j, mask);
  pr_debug("EDMA: EER%d %08x\n", j,
   edma_shadow0_read_array(ctlr, SH_EER, j));
  return 0;
 }

 return -EINVAL;
}
