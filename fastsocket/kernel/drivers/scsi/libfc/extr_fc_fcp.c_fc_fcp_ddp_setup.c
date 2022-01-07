
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* ddp_setup ) (struct fc_lport*,int ,int ,int ) ;} ;
struct fc_lport {TYPE_1__ tt; scalar_t__ lro_enabled; } ;
struct fc_fcp_pkt {int req_flags; int xfer_ddp; int cmd; struct fc_lport* lp; } ;


 int FC_SRB_READ ;
 int scsi_sg_count (int ) ;
 int scsi_sglist (int ) ;
 scalar_t__ stub1 (struct fc_lport*,int ,int ,int ) ;

void fc_fcp_ddp_setup(struct fc_fcp_pkt *fsp, u16 xid)
{
 struct fc_lport *lport;

 lport = fsp->lp;
 if ((fsp->req_flags & FC_SRB_READ) &&
     (lport->lro_enabled) && (lport->tt.ddp_setup)) {
  if (lport->tt.ddp_setup(lport, xid, scsi_sglist(fsp->cmd),
     scsi_sg_count(fsp->cmd)))
   fsp->xfer_ddp = xid;
 }
}
