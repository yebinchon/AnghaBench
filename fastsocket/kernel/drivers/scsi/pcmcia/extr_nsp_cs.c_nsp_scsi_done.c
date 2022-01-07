
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_6__ {int * CurrentSC; } ;
typedef TYPE_3__ nsp_hw_data ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void nsp_scsi_done(struct scsi_cmnd *SCpnt)
{
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;

 data->CurrentSC = ((void*)0);

 SCpnt->scsi_done(SCpnt);
}
