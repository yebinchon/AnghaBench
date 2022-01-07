
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int ccw_queue; TYPE_1__* block; } ;
struct TYPE_2__ {int ccw_queue; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline
int _wait_for_empty_queues(struct dasd_device *device)
{
 if (device->block)
  return list_empty(&device->ccw_queue) &&
   list_empty(&device->block->ccw_queue);
 else
  return list_empty(&device->ccw_queue);
}
