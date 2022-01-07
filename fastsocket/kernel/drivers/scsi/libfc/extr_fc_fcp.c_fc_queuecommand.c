
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ sc_data_direction; TYPE_1__* device; } ;
struct fc_stats {int ControlRequests; int OutputBytes; int OutputRequests; int InputBytes; int InputRequests; } ;
struct fc_rport_libfc_priv {int dummy; } ;
struct fc_rport {struct fc_rport_libfc_priv* dd_data; } ;
struct fc_remote_port {int dummy; } ;
struct fc_lport {int stats; scalar_t__ qfull; } ;
struct fc_fcp_pkt {int state; scalar_t__ req_flags; scalar_t__ data_len; scalar_t__ xfer_len; struct fc_rport* rport; struct scsi_cmnd* cmd; } ;
struct TYPE_2__ {int host; } ;


 int DID_IMM_RETRY ;
 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int FC_SRB_FREE ;
 scalar_t__ FC_SRB_READ ;
 scalar_t__ FC_SRB_WRITE ;
 int GFP_ATOMIC ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int fc_fcp_can_queue_ramp_down (struct fc_lport*) ;
 int fc_fcp_lport_queue_ready (struct fc_lport*) ;
 struct fc_fcp_pkt* fc_fcp_pkt_alloc (struct fc_lport*,int ) ;
 int fc_fcp_pkt_release (struct fc_fcp_pkt*) ;
 int fc_fcp_pkt_send (struct fc_lport*,struct fc_fcp_pkt*) ;
 int fc_remote_port_chkready (struct fc_rport*) ;
 int get_cpu () ;
 struct fc_stats* per_cpu_ptr (int ,int ) ;
 int put_cpu () ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_target (TYPE_1__*) ;
 struct fc_lport* shost_priv (int ) ;
 struct fc_rport* starget_to_rport (int ) ;

int fc_queuecommand(struct scsi_cmnd *sc_cmd, void (*done)(struct scsi_cmnd *))
{
 struct fc_lport *lport;
 struct fc_rport *rport = starget_to_rport(scsi_target(sc_cmd->device));
 struct fc_fcp_pkt *fsp;
 struct fc_rport_libfc_priv *rpriv;
 int rval;
 int rc = 0;
 struct fc_stats *stats;

 lport = shost_priv(sc_cmd->device->host);

 rval = fc_remote_port_chkready(rport);
 if (rval) {
  sc_cmd->result = rval;
  done(sc_cmd);
  return 0;
 }

 if (!*(struct fc_remote_port **)rport->dd_data) {




  sc_cmd->result = DID_IMM_RETRY << 16;
  done(sc_cmd);
  goto out;
 }

 rpriv = rport->dd_data;

 if (!fc_fcp_lport_queue_ready(lport)) {
  if (lport->qfull)
   fc_fcp_can_queue_ramp_down(lport);
  rc = SCSI_MLQUEUE_HOST_BUSY;
  goto out;
 }

 fsp = fc_fcp_pkt_alloc(lport, GFP_ATOMIC);
 if (fsp == ((void*)0)) {
  rc = SCSI_MLQUEUE_HOST_BUSY;
  goto out;
 }




 fsp->cmd = sc_cmd;
 fsp->rport = rport;
 sc_cmd->scsi_done = done;




 fsp->data_len = scsi_bufflen(sc_cmd);
 fsp->xfer_len = 0;




 stats = per_cpu_ptr(lport->stats, get_cpu());
 if (sc_cmd->sc_data_direction == DMA_FROM_DEVICE) {
  fsp->req_flags = FC_SRB_READ;
  stats->InputRequests++;
  stats->InputBytes += fsp->data_len;
 } else if (sc_cmd->sc_data_direction == DMA_TO_DEVICE) {
  fsp->req_flags = FC_SRB_WRITE;
  stats->OutputRequests++;
  stats->OutputBytes += fsp->data_len;
 } else {
  fsp->req_flags = 0;
  stats->ControlRequests++;
 }
 put_cpu();






 rval = fc_fcp_pkt_send(lport, fsp);
 if (rval != 0) {
  fsp->state = FC_SRB_FREE;
  fc_fcp_pkt_release(fsp);
  rc = SCSI_MLQUEUE_HOST_BUSY;
 }
out:
 return rc;
}
