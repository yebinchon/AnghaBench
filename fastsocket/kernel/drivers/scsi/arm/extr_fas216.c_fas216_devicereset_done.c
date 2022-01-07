
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_4__ {int rst_dev_status; int eh_wait; int * rstSCpnt; } ;
typedef TYPE_1__ FAS216_Info ;


 int LOG_ERROR ;
 int fas216_log (TYPE_1__*,int ,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void fas216_devicereset_done(FAS216_Info *info, struct scsi_cmnd *SCpnt,
        unsigned int result)
{
 fas216_log(info, LOG_ERROR, "fas216 device reset complete");

 info->rstSCpnt = ((void*)0);
 info->rst_dev_status = 1;
 wake_up(&info->eh_wait);
}
