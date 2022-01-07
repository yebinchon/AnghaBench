
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ControllerNumber; int ** RequestQueue; int * disks; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_MAJOR ;
 int DAC960_MaxLogicalDrives ;
 int blk_cleanup_queue (int *) ;
 int del_gendisk (int ) ;
 int unregister_blkdev (int,char*) ;

__attribute__((used)) static void DAC960_UnregisterBlockDevice(DAC960_Controller_T *Controller)
{
  int MajorNumber = DAC960_MAJOR + Controller->ControllerNumber;
  int disk;


  for (disk = 0; disk < DAC960_MaxLogicalDrives; disk++) {
 del_gendisk(Controller->disks[disk]);
 blk_cleanup_queue(Controller->RequestQueue[disk]);
 Controller->RequestQueue[disk] = ((void*)0);
  }




  unregister_blkdev(MajorNumber, "dac960");
}
