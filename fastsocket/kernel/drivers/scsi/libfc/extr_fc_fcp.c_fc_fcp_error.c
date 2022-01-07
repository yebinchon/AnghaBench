
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int status_code; int state; } ;


 int FC_CMD_PLOGO ;
 int FC_EX_CLOSED ;
 int FC_SRB_ABORT_PENDING ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_fcp_complete_locked (struct fc_fcp_pkt*) ;
 scalar_t__ fc_fcp_lock_pkt (struct fc_fcp_pkt*) ;
 int fc_fcp_retry_cmd (struct fc_fcp_pkt*) ;
 int fc_fcp_unlock_pkt (struct fc_fcp_pkt*) ;

__attribute__((used)) static void fc_fcp_error(struct fc_fcp_pkt *fsp, struct fc_frame *fp)
{
 int error = PTR_ERR(fp);

 if (fc_fcp_lock_pkt(fsp))
  return;

 if (error == -FC_EX_CLOSED) {
  fc_fcp_retry_cmd(fsp);
  goto unlock;
 }





 fsp->state &= ~FC_SRB_ABORT_PENDING;
 fsp->status_code = FC_CMD_PLOGO;
 fc_fcp_complete_locked(fsp);
unlock:
 fc_fcp_unlock_pkt(fsp);
}
