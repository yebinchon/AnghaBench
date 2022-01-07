
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int (* exch_done ) (struct fc_seq*) ;int (* seq_send ) (struct fc_lport*,struct fc_seq*,struct fc_frame*) ;struct fc_seq* (* seq_start_next ) (struct fc_seq*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int state; scalar_t__ xfer_len; scalar_t__ data_len; int scsi_comp_flags; scalar_t__ scsi_resid; scalar_t__ cmd; struct fc_lport* lp; struct fc_seq* seq_ptr; scalar_t__ io_status; scalar_t__ status_code; } ;
struct fc_exch {int sid; int did; } ;


 int FCP_CONF_REQ ;
 int FCP_RESID_UNDER ;
 scalar_t__ FC_CMD_ABORTED ;
 scalar_t__ FC_DATA_UNDRUN ;
 int FC_FC_END_SEQ ;
 int FC_FC_LAST_SEQ ;
 int FC_FC_SEQ_INIT ;
 int FC_RCTL_DD_SOL_CTL ;
 int FC_SRB_ABORTED ;
 int FC_SRB_ABORT_PENDING ;
 int FC_TYPE_FCP ;
 struct fc_frame* fc_fcp_frame_alloc (struct fc_lport*,int ) ;
 int fc_fill_fc_hdr (struct fc_frame*,int ,int ,int ,int ,int,int ) ;
 int fc_io_compl (struct fc_fcp_pkt*) ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 struct fc_seq* stub1 (struct fc_seq*) ;
 int stub2 (struct fc_lport*,struct fc_seq*,struct fc_frame*) ;
 int stub3 (struct fc_seq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void fc_fcp_complete_locked(struct fc_fcp_pkt *fsp)
{
 struct fc_lport *lport = fsp->lp;
 struct fc_seq *seq;
 struct fc_exch *ep;
 u32 f_ctl;

 if (fsp->state & FC_SRB_ABORT_PENDING)
  return;

 if (fsp->state & FC_SRB_ABORTED) {
  if (!fsp->status_code)
   fsp->status_code = FC_CMD_ABORTED;
 } else {




  if (fsp->xfer_len < fsp->data_len && !fsp->io_status &&
      (!(fsp->scsi_comp_flags & FCP_RESID_UNDER) ||
       fsp->xfer_len < fsp->data_len - fsp->scsi_resid)) {
   fsp->status_code = FC_DATA_UNDRUN;
   fsp->io_status = 0;
  }
 }

 seq = fsp->seq_ptr;
 if (seq) {
  fsp->seq_ptr = ((void*)0);
  if (unlikely(fsp->scsi_comp_flags & FCP_CONF_REQ)) {
   struct fc_frame *conf_frame;
   struct fc_seq *csp;

   csp = lport->tt.seq_start_next(seq);
   conf_frame = fc_fcp_frame_alloc(fsp->lp, 0);
   if (conf_frame) {
    f_ctl = FC_FC_SEQ_INIT;
    f_ctl |= FC_FC_LAST_SEQ | FC_FC_END_SEQ;
    ep = fc_seq_exch(seq);
    fc_fill_fc_hdr(conf_frame, FC_RCTL_DD_SOL_CTL,
            ep->did, ep->sid,
            FC_TYPE_FCP, f_ctl, 0);
    lport->tt.seq_send(lport, csp, conf_frame);
   }
  }
  lport->tt.exch_done(seq);
 }





 if (fsp->cmd)
  fc_io_compl(fsp);
}
