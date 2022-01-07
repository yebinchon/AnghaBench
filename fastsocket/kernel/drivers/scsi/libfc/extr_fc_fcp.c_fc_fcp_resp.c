
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fcp_resp_rsp_info {scalar_t__ rsp_code; } ;
struct fcp_resp_ext {int fr_resid; int fr_sns_len; int fr_rsp_len; } ;
struct fcp_resp {scalar_t__ fr_status; int fr_flags; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {scalar_t__ cdb_status; int scsi_comp_flags; int data_len; scalar_t__ scsi_resid; int xfer_len; void* status_code; TYPE_1__* rport; int state; TYPE_2__* cmd; int tm_done; scalar_t__ wait_for_comp; } ;
struct TYPE_4__ {scalar_t__ underflow; int sense_buffer; } ;
struct TYPE_3__ {int port_id; } ;


 int FCP_CONF_REQ ;
 int FCP_RESID_OVER ;
 int FCP_RESID_UNDER ;
 int FCP_RESP_RSP_INFO_LEN4 ;
 int FCP_RESP_RSP_INFO_LEN8 ;
 int FCP_RSP_LEN_VAL ;
 int FCP_SNS_LEN_VAL ;
 void* FC_DATA_OVRRUN ;
 void* FC_ERROR ;
 int FC_FCP_DBG (struct fc_fcp_pkt*,char*,int,int,int,int) ;
 int FC_SRB_RCV_STATUS ;
 int SCSI_SENSE_BUFFERSIZE ;
 int complete (int *) ;
 int fc_fcp_complete_locked (struct fc_fcp_pkt*) ;
 int fc_fcp_ddp_done (struct fc_fcp_pkt*) ;
 int fc_fcp_timer_set (struct fc_fcp_pkt*,int) ;
 scalar_t__ fr_hdr (struct fc_frame*) ;
 int fr_len (struct fc_frame*) ;
 int memcpy (int ,char*,int) ;
 void* ntohl (int ) ;
 scalar_t__ scsi_bufflen (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void fc_fcp_resp(struct fc_fcp_pkt *fsp, struct fc_frame *fp)
{
 struct fc_frame_header *fh;
 struct fcp_resp *fc_rp;
 struct fcp_resp_ext *rp_ex;
 struct fcp_resp_rsp_info *fc_rp_info;
 u32 plen;
 u32 expected_len;
 u32 respl = 0;
 u32 snsl = 0;
 u8 flags = 0;

 plen = fr_len(fp);
 fh = (struct fc_frame_header *)fr_hdr(fp);
 if (unlikely(plen < sizeof(*fh) + sizeof(*fc_rp)))
  goto len_err;
 plen -= sizeof(*fh);
 fc_rp = (struct fcp_resp *)(fh + 1);
 fsp->cdb_status = fc_rp->fr_status;
 flags = fc_rp->fr_flags;
 fsp->scsi_comp_flags = flags;
 expected_len = fsp->data_len;


 fc_fcp_ddp_done(fsp);

 if (unlikely((flags & ~FCP_CONF_REQ) || fc_rp->fr_status)) {
  rp_ex = (void *)(fc_rp + 1);
  if (flags & (FCP_RSP_LEN_VAL | FCP_SNS_LEN_VAL)) {
   if (plen < sizeof(*fc_rp) + sizeof(*rp_ex))
    goto len_err;
   fc_rp_info = (struct fcp_resp_rsp_info *)(rp_ex + 1);
   if (flags & FCP_RSP_LEN_VAL) {
    respl = ntohl(rp_ex->fr_rsp_len);
    if ((respl != FCP_RESP_RSP_INFO_LEN4) &&
        (respl != FCP_RESP_RSP_INFO_LEN8))
     goto len_err;
    if (fsp->wait_for_comp) {

     fsp->cdb_status = fc_rp_info->rsp_code;
     complete(&fsp->tm_done);




     return;
    }
   }
   if (flags & FCP_SNS_LEN_VAL) {
    snsl = ntohl(rp_ex->fr_sns_len);
    if (snsl > SCSI_SENSE_BUFFERSIZE)
     snsl = SCSI_SENSE_BUFFERSIZE;
    memcpy(fsp->cmd->sense_buffer,
           (char *)fc_rp_info + respl, snsl);
   }
  }
  if (flags & (FCP_RESID_UNDER | FCP_RESID_OVER)) {
   if (plen < sizeof(*fc_rp) + sizeof(rp_ex->fr_resid))
    goto len_err;
   if (flags & FCP_RESID_UNDER) {
    fsp->scsi_resid = ntohl(rp_ex->fr_resid);
    if (!(flags & FCP_SNS_LEN_VAL) &&
        (fc_rp->fr_status == 0) &&
        (scsi_bufflen(fsp->cmd) -
         fsp->scsi_resid) < fsp->cmd->underflow)
     goto err;
    expected_len -= fsp->scsi_resid;
   } else {
    fsp->status_code = FC_ERROR;
   }
  }
 }
 fsp->state |= FC_SRB_RCV_STATUS;




 if (unlikely(fsp->xfer_len != expected_len)) {
  if (fsp->xfer_len < expected_len) {





   fc_fcp_timer_set(fsp, 2);
   return;
  }
  fsp->status_code = FC_DATA_OVRRUN;
  FC_FCP_DBG(fsp, "tgt %6.6x xfer len %zx greater than expected, "
      "len %x, data len %x\n",
      fsp->rport->port_id,
      fsp->xfer_len, expected_len, fsp->data_len);
 }
 fc_fcp_complete_locked(fsp);
 return;

len_err:
 FC_FCP_DBG(fsp, "short FCP response. flags 0x%x len %u respl %u "
     "snsl %u\n", flags, fr_len(fp), respl, snsl);
err:
 fsp->status_code = FC_ERROR;
 fc_fcp_complete_locked(fsp);
}
