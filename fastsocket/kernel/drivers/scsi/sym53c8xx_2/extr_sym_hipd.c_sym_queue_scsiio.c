
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_12__ {int uval; int sval; int wval; } ;
struct TYPE_8__ {scalar_t__ check_nego; } ;
struct sym_tcb {TYPE_5__ head; int nego_cp; TYPE_1__ tgoal; } ;
struct sym_lcb {int curr_flags; int tags_since; int tags_si; scalar_t__* tags_sum; } ;
struct sym_hcb {struct sym_tcb* target; } ;
struct TYPE_13__ {void* size; int addr; } ;
struct TYPE_11__ {size_t sel_id; int sel_scntl4; int sel_sxfer; int sel_scntl3; } ;
struct TYPE_9__ {void* restart; void* start; } ;
struct TYPE_10__ {TYPE_2__ go; } ;
struct TYPE_14__ {TYPE_6__ smsg; TYPE_4__ select; TYPE_3__ head; } ;
struct sym_ccb {size_t target; int tag; int* scsi_smsg; int order; int ext_sg; scalar_t__ ext_ofs; scalar_t__ extra_bytes; scalar_t__ host_flags; scalar_t__ xerr_status; int ssss_status; scalar_t__ nego_status; int host_status; scalar_t__ host_xflags; TYPE_7__ phys; struct scsi_cmnd* cmd; } ;
struct scsi_device {int lun; } ;
struct scsi_cmnd {scalar_t__* cmnd; struct scsi_device* device; } ;


 int CCB_BA (struct sym_ccb*,int ) ;
 int DEBUG_FLAGS ;
 int DEBUG_TAGS ;
 int HS_BUSY ;
 int HS_NEGOTIATE ;
 int IDENTIFY (int,int ) ;
 scalar_t__ INQUIRY ;


 int M_SIMPLE_TAG ;
 int NO_TAG ;
 scalar_t__ REQUEST_SENSE ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SYM_CONF_MAX_TAG ;
 int SYM_DISC_ENABLED ;
 int S_ILLEGAL ;
 void* cpu_to_scr (int) ;
 int resel_dsa ;
 int scsi_smsg ;
 int select ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int ) ;
 int sym_prepare_nego (struct sym_hcb*,struct sym_ccb*,int*) ;
 int sym_print_addr (struct scsi_cmnd*,char*) ;
 int sym_setup_data_and_start (struct sym_hcb*,struct scsi_cmnd*,struct sym_ccb*) ;
 int sym_verbose ;

int sym_queue_scsiio(struct sym_hcb *np, struct scsi_cmnd *cmd, struct sym_ccb *cp)
{
 struct scsi_device *sdev = cmd->device;
 struct sym_tcb *tp;
 struct sym_lcb *lp;
 u_char *msgptr;
 u_int msglen;
 int can_disconnect;




 cp->cmd = cmd;




 tp = &np->target[cp->target];




 lp = sym_lp(tp, sdev->lun);

 can_disconnect = (cp->tag != NO_TAG) ||
  (lp && (lp->curr_flags & SYM_DISC_ENABLED));

 msgptr = cp->scsi_smsg;
 msglen = 0;
 msgptr[msglen++] = IDENTIFY(can_disconnect, sdev->lun);




 if (cp->tag != NO_TAG) {
  u_char order = cp->order;

  switch(order) {
  case 128:
   break;
  case 129:
   break;
  default:
   order = M_SIMPLE_TAG;
  }
  msgptr[msglen++] = order;
  msgptr[msglen++] = (cp->tag << 1) + 1;

 }
 cp->nego_status = 0;
 if ((tp->tgoal.check_nego ||
      cmd->cmnd[0] == INQUIRY || cmd->cmnd[0] == REQUEST_SENSE) &&
     !tp->nego_cp && lp) {
  msglen += sym_prepare_nego(np, cp, msgptr + msglen);
 }




 cp->phys.head.go.start = cpu_to_scr(SCRIPTA_BA(np, select));
 cp->phys.head.go.restart = cpu_to_scr(SCRIPTA_BA(np, resel_dsa));




 cp->phys.select.sel_id = cp->target;
 cp->phys.select.sel_scntl3 = tp->head.wval;
 cp->phys.select.sel_sxfer = tp->head.sval;
 cp->phys.select.sel_scntl4 = tp->head.uval;




 cp->phys.smsg.addr = CCB_BA(cp, scsi_smsg);
 cp->phys.smsg.size = cpu_to_scr(msglen);




 cp->host_xflags = 0;
 cp->host_status = cp->nego_status ? HS_NEGOTIATE : HS_BUSY;
 cp->ssss_status = S_ILLEGAL;
 cp->xerr_status = 0;
 cp->host_flags = 0;
 cp->extra_bytes = 0;





 cp->ext_sg = -1;
 cp->ext_ofs = 0;





 return sym_setup_data_and_start(np, cmd, cp);
}
