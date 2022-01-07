
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int host; } ;
typedef TYPE_2__ Scsi_Cmnd ;


 int aha152x_bus_reset_host (int ) ;

__attribute__((used)) static int aha152x_bus_reset(Scsi_Cmnd *SCpnt)
{
 return aha152x_bus_reset_host(SCpnt->device->host);
}
