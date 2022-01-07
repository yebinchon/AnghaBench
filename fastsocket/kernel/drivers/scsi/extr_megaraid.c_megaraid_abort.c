
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int adapter_t ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;
typedef TYPE_3__ Scsi_Cmnd ;


 int SCB_ABORT ;
 int mega_rundoneq (int *) ;
 int megaraid_abort_and_reset (int *,TYPE_3__*,int ) ;

__attribute__((used)) static int
megaraid_abort(Scsi_Cmnd *cmd)
{
 adapter_t *adapter;
 int rval;

 adapter = (adapter_t *)cmd->device->host->hostdata;

 rval = megaraid_abort_and_reset(adapter, cmd, SCB_ABORT);





 mega_rundoneq(adapter);

 return rval;
}
