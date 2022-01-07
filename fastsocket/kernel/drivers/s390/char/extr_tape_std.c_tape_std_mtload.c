
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {scalar_t__ medium_state; int state_change_wq; } ;


 scalar_t__ MS_LOADED ;
 int wait_event_interruptible (int ,int) ;

int
tape_std_mtload(struct tape_device *device, int count)
{
 return wait_event_interruptible(device->state_change_wq,
  (device->medium_state == MS_LOADED));
}
