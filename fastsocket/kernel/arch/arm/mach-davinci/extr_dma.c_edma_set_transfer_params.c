
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef enum sync_dimension { ____Placeholder_sync_dimension } sync_dimension ;
struct TYPE_2__ {unsigned int num_slots; } ;


 int ASYNC ;
 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int PARM_A_B_CNT ;
 int PARM_CCNT ;
 int PARM_LINK_BCNTRLD ;
 int PARM_OPT ;
 int SYNCDIM ;
 TYPE_1__** edma_info ;
 int edma_parm_and (unsigned int,int ,unsigned int,int ) ;
 int edma_parm_modify (unsigned int,int ,unsigned int,int,int) ;
 int edma_parm_or (unsigned int,int ,unsigned int,int ) ;
 int edma_parm_write (unsigned int,int ,unsigned int,int) ;

void edma_set_transfer_params(unsigned slot,
  u16 acnt, u16 bcnt, u16 ccnt,
  u16 bcnt_rld, enum sync_dimension sync_mode)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(slot);
 slot = EDMA_CHAN_SLOT(slot);

 if (slot < edma_info[ctlr]->num_slots) {
  edma_parm_modify(ctlr, PARM_LINK_BCNTRLD, slot,
    0x0000ffff, bcnt_rld << 16);
  if (sync_mode == ASYNC)
   edma_parm_and(ctlr, PARM_OPT, slot, ~SYNCDIM);
  else
   edma_parm_or(ctlr, PARM_OPT, slot, SYNCDIM);

  edma_parm_write(ctlr, PARM_A_B_CNT, slot, (bcnt << 16) | acnt);
  edma_parm_write(ctlr, PARM_CCNT, slot, ccnt);
 }
}
