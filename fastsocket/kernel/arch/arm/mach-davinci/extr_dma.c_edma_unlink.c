
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_slots; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int PARM_LINK_BCNTRLD ;
 TYPE_1__** edma_info ;
 int edma_parm_or (unsigned int,int ,unsigned int,int) ;

void edma_unlink(unsigned from)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(from);
 from = EDMA_CHAN_SLOT(from);

 if (from >= edma_info[ctlr]->num_slots)
  return;
 edma_parm_or(ctlr, PARM_LINK_BCNTRLD, from, 0xffff);
}
