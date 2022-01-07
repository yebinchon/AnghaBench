
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;

__attribute__((used)) static inline void nsp_inc_resid(struct scsi_cmnd *SCpnt, int residInc)
{
 scsi_set_resid(SCpnt, scsi_get_resid(SCpnt) + residInc);
}
