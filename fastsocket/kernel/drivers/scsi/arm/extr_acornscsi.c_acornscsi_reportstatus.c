
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static inline void acornscsi_reportstatus(struct scsi_cmnd **SCpntp1,
       struct scsi_cmnd **SCpntp2,
       int result)
{
 struct scsi_cmnd *SCpnt = *SCpntp1;

    if (SCpnt) {
 *SCpntp1 = ((void*)0);

 SCpnt->result = result;
 SCpnt->scsi_done(SCpnt);
    }

    if (SCpnt == *SCpntp2)
 *SCpntp2 = ((void*)0);
}
