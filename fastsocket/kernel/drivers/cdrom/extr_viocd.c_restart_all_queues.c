
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* viocd_disk; } ;
struct TYPE_3__ {int queue; } ;


 int blk_run_queue (int ) ;
 TYPE_2__* viocd_diskinfo ;
 int viocd_numdev ;

__attribute__((used)) static void restart_all_queues(int first_index)
{
 int i;

 for (i = first_index + 1; i < viocd_numdev; i++)
  if (viocd_diskinfo[i].viocd_disk)
   blk_run_queue(viocd_diskinfo[i].viocd_disk->queue);
 for (i = 0; i <= first_index; i++)
  if (viocd_diskinfo[i].viocd_disk)
   blk_run_queue(viocd_diskinfo[i].viocd_disk->queue);
}
