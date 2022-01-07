
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_trans {int renego; int period; scalar_t__ qas; scalar_t__ dt; scalar_t__ iu; scalar_t__ width; scalar_t__ offset; scalar_t__ check_nego; } ;
struct sym_tcb {struct sym_ccb* nego_cp; struct sym_trans tgoal; struct scsi_target* starget; } ;
struct sym_hcb {struct sym_tcb* target; } ;
struct sym_ccb {size_t target; int nego_status; } ;
struct scsi_target {int dummy; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;



 int PPR_OPT_DT ;
 int PPR_OPT_IU ;
 int PPR_OPT_QAS ;
 int spi_populate_ppr_msg (int *,int,scalar_t__,scalar_t__,int) ;
 int spi_populate_sync_msg (int *,int,scalar_t__) ;
 int spi_populate_width_msg (int *,scalar_t__) ;
 int sym_check_goals (struct sym_hcb*,struct scsi_target*,struct sym_trans*) ;
 int sym_print_nego_msg (struct sym_hcb*,size_t,char*,int *) ;

__attribute__((used)) static int sym_prepare_nego(struct sym_hcb *np, struct sym_ccb *cp, u_char *msgptr)
{
 struct sym_tcb *tp = &np->target[cp->target];
 struct scsi_target *starget = tp->starget;
 struct sym_trans *goal = &tp->tgoal;
 int msglen = 0;
 int nego;

 sym_check_goals(np, starget, goal);





 if (goal->renego == 130 || (goal->offset &&
     (goal->iu || goal->dt || goal->qas || (goal->period < 0xa)))) {
  nego = 130;
 } else if (goal->renego == 128 || goal->width) {
  nego = 128;
 } else if (goal->renego == 129 || goal->offset) {
  nego = 129;
 } else {
  goal->check_nego = 0;
  nego = 0;
 }

 switch (nego) {
 case 129:
  msglen += spi_populate_sync_msg(msgptr + msglen, goal->period,
    goal->offset);
  break;
 case 128:
  msglen += spi_populate_width_msg(msgptr + msglen, goal->width);
  break;
 case 130:
  msglen += spi_populate_ppr_msg(msgptr + msglen, goal->period,
    goal->offset, goal->width,
    (goal->iu ? PPR_OPT_IU : 0) |
     (goal->dt ? PPR_OPT_DT : 0) |
     (goal->qas ? PPR_OPT_QAS : 0));
  break;
 }

 cp->nego_status = nego;

 if (nego) {
  tp->nego_cp = cp;
  if (DEBUG_FLAGS & DEBUG_NEGO) {
   sym_print_nego_msg(np, cp->target,
       nego == 129 ? "sync msgout" :
       nego == 128 ? "wide msgout" :
       "ppr msgout", msgptr);
  }
 }

 return msglen;
}
