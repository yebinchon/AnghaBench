
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;

__attribute__((used)) static inline void
CMD_INC_RESID(struct scsi_cmnd *cmd, int inc)
{
 scsi_set_resid(cmd, scsi_get_resid(cmd) + inc);
}
