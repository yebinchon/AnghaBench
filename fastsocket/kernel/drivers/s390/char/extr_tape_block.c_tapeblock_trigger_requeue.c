
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int requeue_task; int requeue_scheduled; } ;
struct tape_device {TYPE_1__ blk_data; } ;


 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
tapeblock_trigger_requeue(struct tape_device *device)
{

 if (atomic_cmpxchg(&device->blk_data.requeue_scheduled, 0, 1) != 0)
  return;
 schedule_work(&device->blk_data.requeue_task);
}
