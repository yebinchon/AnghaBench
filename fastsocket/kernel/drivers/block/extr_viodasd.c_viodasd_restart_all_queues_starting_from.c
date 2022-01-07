
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* disk; } ;
struct TYPE_3__ {int queue; } ;


 int MAX_DISKNO ;
 int blk_run_queue (int ) ;
 TYPE_2__* viodasd_devices ;

__attribute__((used)) static void viodasd_restart_all_queues_starting_from(int first_index)
{
 int i;

 for (i = first_index + 1; i < MAX_DISKNO; ++i)
  if (viodasd_devices[i].disk)
   blk_run_queue(viodasd_devices[i].disk->queue);
 for (i = 0; i <= first_index; ++i)
  if (viodasd_devices[i].disk)
   blk_run_queue(viodasd_devices[i].disk->queue);
}
