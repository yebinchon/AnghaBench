
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_ccb {int ssss_status; } ;
struct scsi_cmnd {int result; } ;


 int DID_OK ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;

__attribute__((used)) static inline void sym_set_cam_result_ok(struct sym_ccb *cp, struct scsi_cmnd *cmd, int resid)
{
 scsi_set_resid(cmd, resid);
 cmd->result = (((DID_OK) << 16) + ((cp->ssss_status) & 0x7f));
}
