
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int effect_id; } ;
struct uinput_request {int id; int retval; int done; TYPE_1__ u; int code; } ;
struct uinput_device {int dummy; } ;
struct input_dev {int evbit; } ;


 int ENOSYS ;
 int EV_FF ;
 int UI_FF_ERASE ;
 int init_completion (int *) ;
 struct uinput_device* input_get_drvdata (struct input_dev*) ;
 int test_bit (int ,int ) ;
 int uinput_request_submit (struct uinput_device*,struct uinput_request*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int uinput_dev_erase_effect(struct input_dev *dev, int effect_id)
{
 struct uinput_device *udev = input_get_drvdata(dev);
 struct uinput_request request;
 int retval;

 if (!test_bit(EV_FF, dev->evbit))
  return -ENOSYS;

 request.id = -1;
 init_completion(&request.done);
 request.code = UI_FF_ERASE;
 request.u.effect_id = effect_id;

 retval = uinput_request_submit(udev, &request);
 if (!retval) {
  wait_for_completion(&request.done);
  retval = request.retval;
 }

 return retval;
}
