
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edmacc_param {int dummy; } ;
struct TYPE_2__ {unsigned int num_slots; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 scalar_t__ PARM_OFFSET (unsigned int) ;
 int PARM_SIZE ;
 TYPE_1__** edma_info ;
 scalar_t__* edmacc_regs_base ;
 int memcpy_fromio (struct edmacc_param*,scalar_t__,int ) ;

void edma_read_slot(unsigned slot, struct edmacc_param *param)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(slot);
 slot = EDMA_CHAN_SLOT(slot);

 if (slot >= edma_info[ctlr]->num_slots)
  return;
 memcpy_fromio(param, edmacc_regs_base[ctlr] + PARM_OFFSET(slot),
   PARM_SIZE);
}
