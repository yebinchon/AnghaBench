
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int int_waitq; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_9__ {TYPE_2__* device; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;
typedef TYPE_4__ Scsi_Cmnd ;


 int complete (int *) ;

__attribute__((used)) static void
mega_internal_done(Scsi_Cmnd *scmd)
{
 adapter_t *adapter;

 adapter = (adapter_t *)scmd->device->host->hostdata;

 complete(&adapter->int_waitq);

}
