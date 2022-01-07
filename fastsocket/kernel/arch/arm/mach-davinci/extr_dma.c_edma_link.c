
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_slots; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int PARM_LINK_BCNTRLD ;
 int PARM_OFFSET (unsigned int) ;
 TYPE_1__** edma_info ;
 int edma_parm_modify (unsigned int,int ,unsigned int,int,int ) ;

void edma_link(unsigned from, unsigned to)
{
 unsigned ctlr_from, ctlr_to;

 ctlr_from = EDMA_CTLR(from);
 from = EDMA_CHAN_SLOT(from);
 ctlr_to = EDMA_CTLR(to);
 to = EDMA_CHAN_SLOT(to);

 if (from >= edma_info[ctlr_from]->num_slots)
  return;
 if (to >= edma_info[ctlr_to]->num_slots)
  return;
 edma_parm_modify(ctlr_from, PARM_LINK_BCNTRLD, from, 0xffff0000,
    PARM_OFFSET(to));
}
