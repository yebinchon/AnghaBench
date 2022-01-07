
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int id; int code; } ;
struct uinput_device {scalar_t__ state; int mutex; int dev; } ;


 int ENODEV ;
 int EV_UINPUT ;
 scalar_t__ UIST_CREATED ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int uinput_dev_event (int ,int ,int ,int ) ;
 int uinput_request_reserve_slot (struct uinput_device*,struct uinput_request*) ;

__attribute__((used)) static int uinput_request_submit(struct uinput_device *udev, struct uinput_request *request)
{
 int retval;

 retval = uinput_request_reserve_slot(udev, request);
 if (retval)
  return retval;

 retval = mutex_lock_interruptible(&udev->mutex);
 if (retval)
  return retval;

 if (udev->state != UIST_CREATED) {
  retval = -ENODEV;
  goto out;
 }


 uinput_dev_event(udev->dev, EV_UINPUT, request->code, request->id);

 out:
 mutex_unlock(&udev->mutex);
 return retval;
}
