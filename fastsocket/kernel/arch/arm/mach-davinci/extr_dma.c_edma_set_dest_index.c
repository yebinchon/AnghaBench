
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s16 ;
struct TYPE_2__ {unsigned int num_slots; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int PARM_SRC_DST_BIDX ;
 int PARM_SRC_DST_CIDX ;
 TYPE_1__** edma_info ;
 int edma_parm_modify (unsigned int,int ,unsigned int,int,int) ;

void edma_set_dest_index(unsigned slot, s16 dest_bidx, s16 dest_cidx)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(slot);
 slot = EDMA_CHAN_SLOT(slot);

 if (slot < edma_info[ctlr]->num_slots) {
  edma_parm_modify(ctlr, PARM_SRC_DST_BIDX, slot,
    0x0000ffff, dest_bidx << 16);
  edma_parm_modify(ctlr, PARM_SRC_DST_CIDX, slot,
    0x0000ffff, dest_cidx << 16);
 }
}
