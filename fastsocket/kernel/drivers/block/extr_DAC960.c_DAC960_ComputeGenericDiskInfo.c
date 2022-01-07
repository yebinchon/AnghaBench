
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * disks; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_MaxLogicalDrives ;
 int disk_size (TYPE_1__*,int) ;
 int set_capacity (int ,int ) ;

__attribute__((used)) static void DAC960_ComputeGenericDiskInfo(DAC960_Controller_T *Controller)
{
 int disk;
 for (disk = 0; disk < DAC960_MaxLogicalDrives; disk++)
  set_capacity(Controller->disks[disk], disk_size(Controller, disk));
}
