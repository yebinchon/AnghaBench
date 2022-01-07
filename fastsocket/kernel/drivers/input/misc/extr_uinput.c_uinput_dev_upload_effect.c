
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct ff_effect* old; struct ff_effect* effect; } ;
struct TYPE_8__ {TYPE_3__ upload; } ;
struct uinput_request {int id; int retval; int done; TYPE_4__ u; int code; } ;
struct uinput_device {int dummy; } ;
struct input_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ waveform; } ;
struct TYPE_6__ {TYPE_1__ periodic; } ;
struct ff_effect {scalar_t__ type; TYPE_2__ u; } ;


 int EINVAL ;
 scalar_t__ FF_CUSTOM ;
 scalar_t__ FF_PERIODIC ;
 int UI_FF_UPLOAD ;
 int init_completion (int *) ;
 struct uinput_device* input_get_drvdata (struct input_dev*) ;
 int uinput_request_submit (struct uinput_device*,struct uinput_request*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int uinput_dev_upload_effect(struct input_dev *dev, struct ff_effect *effect, struct ff_effect *old)
{
 struct uinput_device *udev = input_get_drvdata(dev);
 struct uinput_request request;
 int retval;
 if (effect->type == FF_PERIODIC &&
   effect->u.periodic.waveform == FF_CUSTOM)
  return -EINVAL;

 request.id = -1;
 init_completion(&request.done);
 request.code = UI_FF_UPLOAD;
 request.u.upload.effect = effect;
 request.u.upload.old = old;

 retval = uinput_request_submit(udev, &request);
 if (!retval) {
  wait_for_completion(&request.done);
  retval = request.retval;
 }

 return retval;
}
