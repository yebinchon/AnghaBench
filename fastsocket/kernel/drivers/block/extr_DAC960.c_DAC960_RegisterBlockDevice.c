
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {TYPE_1__* queuedata; } ;
struct gendisk {int major; int first_minor; int * fops; int disk_name; struct request_queue* queue; } ;
struct TYPE_3__ {int ControllerNumber; int MaxBlocksPerCommand; int DriverScatterGatherLimit; int BounceBufferLimit; struct request_queue** RequestQueue; int queue_lock; struct gendisk** disks; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_BlockDeviceOperations ;
 int DAC960_MAJOR ;
 int DAC960_MaxLogicalDrives ;
 int DAC960_MaxPartitionsBits ;
 int DAC960_RequestFunction ;
 struct request_queue* blk_init_queue (int ,int *) ;
 int blk_queue_bounce_limit (struct request_queue*,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int ) ;
 int blk_queue_max_segments (struct request_queue*,int ) ;
 int printk (char*) ;
 scalar_t__ register_blkdev (int,char*) ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static bool DAC960_RegisterBlockDevice(DAC960_Controller_T *Controller)
{
  int MajorNumber = DAC960_MAJOR + Controller->ControllerNumber;
  int n;




  if (register_blkdev(MajorNumber, "dac960") < 0)
      return 0;

  for (n = 0; n < DAC960_MaxLogicalDrives; n++) {
 struct gendisk *disk = Controller->disks[n];
   struct request_queue *RequestQueue;


   RequestQueue = blk_init_queue(DAC960_RequestFunction,&Controller->queue_lock);
   if (!RequestQueue) {
  printk("DAC960: failure to allocate request queue\n");
  continue;
   }
   Controller->RequestQueue[n] = RequestQueue;
   blk_queue_bounce_limit(RequestQueue, Controller->BounceBufferLimit);
   RequestQueue->queuedata = Controller;
 blk_queue_max_segments(RequestQueue, Controller->DriverScatterGatherLimit);
 blk_queue_max_hw_sectors(RequestQueue, Controller->MaxBlocksPerCommand);
 disk->queue = RequestQueue;
 sprintf(disk->disk_name, "rd/c%dd%d", Controller->ControllerNumber, n);
 disk->major = MajorNumber;
 disk->first_minor = n << DAC960_MaxPartitionsBits;
 disk->fops = &DAC960_BlockDeviceOperations;
   }



  return 1;
}
