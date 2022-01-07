
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* cmnd; scalar_t__ result; } ;
typedef TYPE_1__ Scsi_Cmnd ;


 scalar_t__ REQUEST_SENSE ;
 int aha152x_internal_queue (TYPE_1__*,int *,int ,void (*) (TYPE_1__*)) ;

__attribute__((used)) static int aha152x_queue(Scsi_Cmnd *SCpnt, void (*done)(Scsi_Cmnd *))
{
 return aha152x_internal_queue(SCpnt, ((void*)0), 0, done);
}
