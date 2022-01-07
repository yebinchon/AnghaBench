
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
typedef int nsp_hw_data ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int NSP_DEBUG_BUSRESET ;
 int nsp_bus_reset (int *) ;
 int nsp_dbg (int ,char*,struct scsi_cmnd*) ;

__attribute__((used)) static int nsp_eh_bus_reset(struct scsi_cmnd *SCpnt)
{
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;

 nsp_dbg(NSP_DEBUG_BUSRESET, "SCpnt=0x%p", SCpnt);

 return nsp_bus_reset(data);
}
