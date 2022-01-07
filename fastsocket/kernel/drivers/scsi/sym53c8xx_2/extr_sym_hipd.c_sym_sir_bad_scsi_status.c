
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
struct sym_hcb {int squeue_ba; scalar_t__ last_cp; } ;
struct TYPE_13__ {void* start; } ;
struct TYPE_14__ {TYPE_5__ go; void* lastp; void* savep; } ;
struct TYPE_12__ {void* size; void* addr; } ;
struct TYPE_10__ {void* size; void* addr; } ;
struct TYPE_9__ {void* size; void* addr; } ;
struct TYPE_15__ {TYPE_6__ head; TYPE_4__ sense; TYPE_2__ cmd; TYPE_1__ smsg; } ;
struct sym_ccb {int ssss_status; int host_flags; int lun; int sv_scsi_status; int* sensecmd; int data_len; TYPE_7__ phys; int extra_bytes; int xerr_status; int nego_status; int host_status; int host_xflags; void* goalp; void* startp; int sns_bbuf; TYPE_8__* cmd; int * scsi_smsg2; int sv_resid; int sv_xerr_status; int target; } ;
struct TYPE_16__ {TYPE_3__* device; } ;
struct TYPE_11__ {int scsi_level; } ;


 void* CCB_BA (struct sym_ccb*,int ) ;
 int HF_DATA_IN ;
 int HF_SENSE ;
 int HS_BUSY ;
 int HS_NEGOTIATE ;
 int IDENTIFY (int ,int) ;
 int INL (struct sym_hcb*,int ) ;
 int OUTL_DSP (struct sym_hcb*,int) ;
 int REQUEST_SENSE ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 int SCSI_2 ;
 int SYM_SNS_BBUF_LEN ;


 int S_ILLEGAL ;


 void* cpu_to_scr (int) ;
 int memset (int ,int ,int) ;
 int nc_scratcha ;
 int scsi_smsg2 ;
 int sdata_in ;
 int select ;
 int sensecmd ;
 int sns_bbuf ;
 int start ;
 int sym_complete_error (struct sym_hcb*,struct sym_ccb*) ;
 int sym_compute_residual (struct sym_hcb*,struct sym_ccb*) ;
 int sym_dequeue_from_squeue (struct sym_hcb*,int,int ,int,int) ;
 int sym_flush_comp_queue (struct sym_hcb*,int ) ;
 int sym_prepare_nego (struct sym_hcb*,struct sym_ccb*,int *) ;
 int sym_print_addr (TYPE_8__*,char*,char*) ;
 int sym_put_start_queue (struct sym_hcb*,struct sym_ccb*) ;
 int sym_verbose ;

__attribute__((used)) static void sym_sir_bad_scsi_status(struct sym_hcb *np, int num, struct sym_ccb *cp)
{
 u32 startp;
 u_char s_status = cp->ssss_status;
 u_char h_flags = cp->host_flags;
 int msglen;
 int i;




 i = (INL(np, nc_scratcha) - np->squeue_ba) / 4;
 switch(s_status) {
 case 131:
 case 129:
  if (sym_verbose >= 2) {
   sym_print_addr(cp->cmd, "%s\n",
           s_status == 131 ? "BUSY" : "QUEUE FULL\n");
  }
 default:
  sym_complete_error (np, cp);
  break;
 case 128:
 case 130:



  if (h_flags & HF_SENSE) {
   sym_complete_error (np, cp);
   break;
  }





  sym_dequeue_from_squeue(np, i, cp->target, cp->lun, -1);
  OUTL_DSP(np, SCRIPTA_BA(np, start));





  cp->sv_scsi_status = cp->ssss_status;
  cp->sv_xerr_status = cp->xerr_status;
  cp->sv_resid = sym_compute_residual(np, cp);






  cp->scsi_smsg2[0] = IDENTIFY(0, cp->lun);
  msglen = 1;
  cp->nego_status = 0;
  msglen += sym_prepare_nego(np, cp, &cp->scsi_smsg2[msglen]);



  cp->phys.smsg.addr = CCB_BA(cp, scsi_smsg2);
  cp->phys.smsg.size = cpu_to_scr(msglen);




  cp->phys.cmd.addr = CCB_BA(cp, sensecmd);
  cp->phys.cmd.size = cpu_to_scr(6);




  cp->sensecmd[0] = REQUEST_SENSE;
  cp->sensecmd[1] = 0;
  if (cp->cmd->device->scsi_level <= SCSI_2 && cp->lun <= 7)
   cp->sensecmd[1] = cp->lun << 5;
  cp->sensecmd[4] = SYM_SNS_BBUF_LEN;
  cp->data_len = SYM_SNS_BBUF_LEN;




  memset(cp->sns_bbuf, 0, SYM_SNS_BBUF_LEN);
  cp->phys.sense.addr = CCB_BA(cp, sns_bbuf);
  cp->phys.sense.size = cpu_to_scr(SYM_SNS_BBUF_LEN);




  startp = SCRIPTB_BA(np, sdata_in);

  cp->phys.head.savep = cpu_to_scr(startp);
  cp->phys.head.lastp = cpu_to_scr(startp);
  cp->startp = cpu_to_scr(startp);
  cp->goalp = cpu_to_scr(startp + 16);

  cp->host_xflags = 0;
  cp->host_status = cp->nego_status ? HS_NEGOTIATE : HS_BUSY;
  cp->ssss_status = S_ILLEGAL;
  cp->host_flags = (HF_SENSE|HF_DATA_IN);
  cp->xerr_status = 0;
  cp->extra_bytes = 0;

  cp->phys.head.go.start = cpu_to_scr(SCRIPTA_BA(np, select));




  sym_put_start_queue(np, cp);




  sym_flush_comp_queue(np, 0);
  break;
 }
}
