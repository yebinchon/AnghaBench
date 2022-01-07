
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sym_hcb {int dummy; } ;
struct TYPE_3__ {void* savep; void* lastp; } ;
struct TYPE_4__ {TYPE_1__ head; } ;
struct sym_ccb {scalar_t__ segments; int* cdb_buf; void* goalp; TYPE_2__ phys; void* startp; int host_flags; scalar_t__ data_len; } ;
struct scsi_cmnd {int sc_data_direction; } ;


 int DID_ERROR ;




 int HF_DATA_IN ;
 int KERN_INFO ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 void* cpu_to_scr (int ) ;
 int data_in2 ;
 int data_out2 ;
 int no_data ;
 int panic (char*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int sym_free_ccb (struct sym_hcb*,struct sym_ccb*) ;
 int sym_put_start_queue (struct sym_hcb*,struct sym_ccb*) ;
 scalar_t__ sym_scatter (struct sym_hcb*,struct sym_ccb*,struct scsi_cmnd*) ;
 int sym_set_cam_status (struct scsi_cmnd*,int ) ;
 scalar_t__ sym_setup_cdb (struct sym_hcb*,struct scsi_cmnd*,struct sym_ccb*) ;
 int sym_xpt_done (struct sym_hcb*,struct scsi_cmnd*) ;

int sym_setup_data_and_start(struct sym_hcb *np, struct scsi_cmnd *cmd, struct sym_ccb *cp)
{
 u32 lastp, goalp;
 int dir;




 if (sym_setup_cdb(np, cmd, cp))
  goto out_abort;




 dir = cmd->sc_data_direction;
 if (dir != 129) {
  cp->segments = sym_scatter(np, cp, cmd);
  if (cp->segments < 0) {
   sym_set_cam_status(cmd, DID_ERROR);
   goto out_abort;
  }




  if (!cp->segments)
   dir = 129;
 } else {
  cp->data_len = 0;
  cp->segments = 0;
 }




 switch (dir) {
 case 131:
  scmd_printk(KERN_INFO, cmd, "got DMA_BIDIRECTIONAL command");
  sym_set_cam_status(cmd, DID_ERROR);
  goto out_abort;
 case 128:
  goalp = SCRIPTA_BA(np, data_out2) + 8;
  lastp = goalp - 8 - (cp->segments * (2*4));
  break;
 case 130:
  cp->host_flags |= HF_DATA_IN;
  goalp = SCRIPTA_BA(np, data_in2) + 8;
  lastp = goalp - 8 - (cp->segments * (2*4));
  break;
 case 129:
 default:
  lastp = goalp = SCRIPTB_BA(np, no_data);
  break;
 }




 cp->phys.head.lastp = cpu_to_scr(lastp);
 cp->phys.head.savep = cpu_to_scr(lastp);
 cp->startp = cp->phys.head.savep;
 cp->goalp = cpu_to_scr(goalp);
 sym_put_start_queue(np, cp);
 return 0;

out_abort:
 sym_free_ccb(np, cp);
 sym_xpt_done(np, cmd);
 return 0;
}
