
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_lun {int dummy; } ;
struct scsi_cmnd {int cmd_len; int cmnd; TYPE_1__* device; } ;
struct fcp_cmnd {scalar_t__ fc_pri_ta; int fc_flags; int fc_tm_flags; scalar_t__ fc_cmdref; int fc_cdb; int fc_dl; scalar_t__ fc_lun; } ;
struct TYPE_4__ {int tm_flags; } ;
struct bnx2fc_cmd {int io_req_flags; TYPE_2__ mp_req; int data_xfer_len; struct scsi_cmnd* sc_cmd; } ;
struct TYPE_3__ {int lun; } ;


 scalar_t__ FCP_PTA_HEADQ ;
 scalar_t__ FCP_PTA_ORDERED ;
 scalar_t__ FCP_PTA_SIMPLE ;


 int htonl (int ) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct fcp_cmnd*,int ,int) ;
 scalar_t__ scsi_populate_tag_msg (struct scsi_cmnd*,char*) ;

void bnx2fc_build_fcp_cmnd(struct bnx2fc_cmd *io_req,
      struct fcp_cmnd *fcp_cmnd)
{
 struct scsi_cmnd *sc_cmd = io_req->sc_cmd;
 char tag[2];

 memset(fcp_cmnd, 0, sizeof(struct fcp_cmnd));

 int_to_scsilun(sc_cmd->device->lun,
   (struct scsi_lun *) fcp_cmnd->fc_lun);


 fcp_cmnd->fc_dl = htonl(io_req->data_xfer_len);
 memcpy(fcp_cmnd->fc_cdb, sc_cmd->cmnd, sc_cmd->cmd_len);

 fcp_cmnd->fc_cmdref = 0;
 fcp_cmnd->fc_pri_ta = 0;
 fcp_cmnd->fc_tm_flags = io_req->mp_req.tm_flags;
 fcp_cmnd->fc_flags = io_req->io_req_flags;

 if (scsi_populate_tag_msg(sc_cmd, tag)) {
  switch (tag[0]) {
  case 129:
   fcp_cmnd->fc_pri_ta = FCP_PTA_HEADQ;
   break;
  case 128:
   fcp_cmnd->fc_pri_ta = FCP_PTA_ORDERED;
   break;
  default:
   fcp_cmnd->fc_pri_ta = FCP_PTA_SIMPLE;
   break;
  }
 } else {
  fcp_cmnd->fc_pri_ta = 0;
 }
}
