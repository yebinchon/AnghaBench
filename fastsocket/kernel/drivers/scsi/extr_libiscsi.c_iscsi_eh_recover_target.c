
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int FAILED ;
 int iscsi_eh_session_reset (struct scsi_cmnd*) ;
 int iscsi_eh_target_reset (struct scsi_cmnd*) ;

int iscsi_eh_recover_target(struct scsi_cmnd *sc)
{
 int rc;

 rc = iscsi_eh_target_reset(sc);
 if (rc == FAILED)
  rc = iscsi_eh_session_reset(sc);
 return rc;
}
