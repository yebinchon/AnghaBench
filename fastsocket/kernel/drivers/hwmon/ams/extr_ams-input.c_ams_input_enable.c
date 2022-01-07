
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * parent; } ;
struct TYPE_8__ {scalar_t__ vendor; int bustype; } ;
struct input_dev {char* name; int keybit; int evbit; TYPE_2__ dev; TYPE_1__ id; } ;
typedef void* s8 ;
struct TYPE_12__ {TYPE_4__* idev; TYPE_3__* of_dev; int bustype; void* zcalib; void* ycalib; void* xcalib; } ;
struct TYPE_11__ {int poll_interval; struct input_dev* input; int poll; } ;
struct TYPE_10__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BTN_TOUCH ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int ams_idev_poll ;
 TYPE_7__ ams_info ;
 int ams_sensors (void**,void**,void**) ;
 TYPE_4__* input_allocate_polled_device () ;
 int input_free_polled_device (TYPE_4__*) ;
 int input_register_polled_device (TYPE_4__*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int,int ) ;
 int joystick ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ams_input_enable(void)
{
 struct input_dev *input;
 s8 x, y, z;
 int error;

 ams_sensors(&x, &y, &z);
 ams_info.xcalib = x;
 ams_info.ycalib = y;
 ams_info.zcalib = z;

 ams_info.idev = input_allocate_polled_device();
 if (!ams_info.idev)
  return -ENOMEM;

 ams_info.idev->poll = ams_idev_poll;
 ams_info.idev->poll_interval = 25;

 input = ams_info.idev->input;
 input->name = "Apple Motion Sensor";
 input->id.bustype = ams_info.bustype;
 input->id.vendor = 0;
 input->dev.parent = &ams_info.of_dev->dev;

 input_set_abs_params(input, ABS_X, -50, 50, 3, 0);
 input_set_abs_params(input, ABS_Y, -50, 50, 3, 0);
 input_set_abs_params(input, ABS_Z, -50, 50, 3, 0);

 set_bit(EV_ABS, input->evbit);
 set_bit(EV_KEY, input->evbit);
 set_bit(BTN_TOUCH, input->keybit);

 error = input_register_polled_device(ams_info.idev);
 if (error) {
  input_free_polled_device(ams_info.idev);
  ams_info.idev = ((void*)0);
  return error;
 }

 joystick = 1;

 return 0;
}
