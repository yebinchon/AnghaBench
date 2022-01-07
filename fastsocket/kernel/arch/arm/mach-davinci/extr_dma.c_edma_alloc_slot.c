
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_channels; int num_slots; int edma_inuse; } ;


 int EBUSY ;
 int EDMA_CHAN_SLOT (int) ;
 int EDMA_CTLR_CHAN (unsigned int,int) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ PARM_OFFSET (int) ;
 int PARM_SIZE ;
 int dummy_paramset ;
 TYPE_1__** edma_info ;
 scalar_t__* edmacc_regs_base ;
 int find_next_zero_bit (int ,int,int) ;
 int memcpy_toio (scalar_t__,int *,int ) ;
 scalar_t__ test_and_set_bit (int,int ) ;

int edma_alloc_slot(unsigned ctlr, int slot)
{
 if (slot >= 0)
  slot = EDMA_CHAN_SLOT(slot);

 if (slot < 0) {
  slot = edma_info[ctlr]->num_channels;
  for (;;) {
   slot = find_next_zero_bit(edma_info[ctlr]->edma_inuse,
     edma_info[ctlr]->num_slots, slot);
   if (slot == edma_info[ctlr]->num_slots)
    return -ENOMEM;
   if (!test_and_set_bit(slot,
      edma_info[ctlr]->edma_inuse))
    break;
  }
 } else if (slot < edma_info[ctlr]->num_channels ||
   slot >= edma_info[ctlr]->num_slots) {
  return -EINVAL;
 } else if (test_and_set_bit(slot, edma_info[ctlr]->edma_inuse)) {
  return -EBUSY;
 }

 memcpy_toio(edmacc_regs_base[ctlr] + PARM_OFFSET(slot),
   &dummy_paramset, PARM_SIZE);

 return EDMA_CTLR_CHAN(ctlr, slot);
}
