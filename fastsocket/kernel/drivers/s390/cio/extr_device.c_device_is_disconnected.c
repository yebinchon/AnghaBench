
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ DEV_STATE_DISCONNECTED ;
 scalar_t__ DEV_STATE_DISCONNECTED_SENSE_ID ;

__attribute__((used)) static int device_is_disconnected(struct ccw_device *cdev)
{
 if (!cdev)
  return 0;
 return (cdev->private->state == DEV_STATE_DISCONNECTED ||
  cdev->private->state == DEV_STATE_DISCONNECTED_SENSE_ID);
}
