
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_channels; unsigned int num_slots; int edma_inuse; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 scalar_t__ PARM_OFFSET (unsigned int) ;
 int PARM_SIZE ;
 int clear_bit (unsigned int,int ) ;
 int dummy_paramset ;
 TYPE_1__** edma_info ;
 scalar_t__* edmacc_regs_base ;
 int memcpy_toio (scalar_t__,int *,int ) ;

void edma_free_slot(unsigned slot)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(slot);
 slot = EDMA_CHAN_SLOT(slot);

 if (slot < edma_info[ctlr]->num_channels ||
  slot >= edma_info[ctlr]->num_slots)
  return;

 memcpy_toio(edmacc_regs_base[ctlr] + PARM_OFFSET(slot),
   &dummy_paramset, PARM_SIZE);
 clear_bit(slot, edma_info[ctlr]->edma_inuse);
}
