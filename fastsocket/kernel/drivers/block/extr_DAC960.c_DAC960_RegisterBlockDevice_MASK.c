#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {TYPE_1__* queuedata; } ;
struct gendisk {int major; int first_minor; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; struct request_queue* queue; } ;
struct TYPE_3__ {int ControllerNumber; int /*<<< orphan*/  MaxBlocksPerCommand; int /*<<< orphan*/  DriverScatterGatherLimit; int /*<<< orphan*/  BounceBufferLimit; struct request_queue** RequestQueue; int /*<<< orphan*/  queue_lock; struct gendisk** disks; } ;
typedef  TYPE_1__ DAC960_Controller_T ;

/* Variables and functions */
 int /*<<< orphan*/  DAC960_BlockDeviceOperations ; 
 int DAC960_MAJOR ; 
 int DAC960_MaxLogicalDrives ; 
 int DAC960_MaxPartitionsBits ; 
 int /*<<< orphan*/  DAC960_RequestFunction ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static bool FUNC7(DAC960_Controller_T *Controller)
{
  int MajorNumber = DAC960_MAJOR + Controller->ControllerNumber;
  int n;

  /*
    Register the Block Device Major Number for this DAC960 Controller.
  */
  if (FUNC5(MajorNumber, "dac960") < 0)
      return false;

  for (n = 0; n < DAC960_MaxLogicalDrives; n++) {
	struct gendisk *disk = Controller->disks[n];
  	struct request_queue *RequestQueue;

	/* for now, let all request queues share controller's lock */
  	RequestQueue = FUNC0(DAC960_RequestFunction,&Controller->queue_lock);
  	if (!RequestQueue) {
		FUNC4("DAC960: failure to allocate request queue\n");
		continue;
  	}
  	Controller->RequestQueue[n] = RequestQueue;
  	FUNC1(RequestQueue, Controller->BounceBufferLimit);
  	RequestQueue->queuedata = Controller;
	FUNC3(RequestQueue, Controller->DriverScatterGatherLimit);
	FUNC2(RequestQueue, Controller->MaxBlocksPerCommand);
	disk->queue = RequestQueue;
	FUNC6(disk->disk_name, "rd/c%dd%d", Controller->ControllerNumber, n);
	disk->major = MajorNumber;
	disk->first_minor = n << DAC960_MaxPartitionsBits;
	disk->fops = &DAC960_BlockDeviceOperations;
   }
  /*
    Indicate the Block Device Registration completed successfully,
  */
  return true;
}