
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uinput_device {TYPE_1__* dev; } ;
struct TYPE_3__ {int event; } ;


 int ENOMEM ;
 TYPE_1__* input_allocate_device () ;
 int input_set_drvdata (TYPE_1__*,struct uinput_device*) ;
 int uinput_dev_event ;

__attribute__((used)) static int uinput_allocate_device(struct uinput_device *udev)
{
 udev->dev = input_allocate_device();
 if (!udev->dev)
  return -ENOMEM;

 udev->dev->event = uinput_dev_event;
 input_set_drvdata(udev->dev, udev);

 return 0;
}
