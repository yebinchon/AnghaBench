
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int disconnected; } ;
struct TYPE_8__ {scalar_t__ aborting; scalar_t__ disconnectable; } ;
struct TYPE_11__ {int * origSCpnt; int * rstSCpnt; int * reqSCpnt; int * SCpnt; TYPE_3__ queues; TYPE_2__* device; TYPE_1__ scsi; int busyluns; } ;
struct TYPE_9__ {int parity_check; scalar_t__ parity_enabled; } ;
typedef TYPE_4__ FAS216_Info ;


 int fas216_bus_reset (TYPE_4__*) ;
 int fas216_checkmagic (TYPE_4__*) ;
 int memset (int ,int ,int) ;
 int * queue_remove (int *) ;

__attribute__((used)) static void fas216_reset_state(FAS216_Info *info)
{
 int i;

 fas216_checkmagic(info);

 fas216_bus_reset(info);




 memset(info->busyluns, 0, sizeof(info->busyluns));
 info->scsi.disconnectable = 0;
 info->scsi.aborting = 0;

 for (i = 0; i < 8; i++) {
  info->device[i].parity_enabled = 0;
  info->device[i].parity_check = 1;
 }




 while (queue_remove(&info->queues.disconnected) != ((void*)0));




 info->SCpnt = ((void*)0);
 info->reqSCpnt = ((void*)0);
 info->rstSCpnt = ((void*)0);
 info->origSCpnt = ((void*)0);
}
