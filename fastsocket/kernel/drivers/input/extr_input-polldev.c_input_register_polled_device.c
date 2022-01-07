
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int poll_interval; int work; struct input_dev* input; } ;
struct input_dev {int close; int open; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int input_close_polled_device ;
 int input_open_polled_device ;
 int input_polled_device_work ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct input_polled_dev*) ;

int input_register_polled_device(struct input_polled_dev *dev)
{
 struct input_dev *input = dev->input;

 input_set_drvdata(input, dev);
 INIT_DELAYED_WORK(&dev->work, input_polled_device_work);
 if (!dev->poll_interval)
  dev->poll_interval = 500;
 input->open = input_open_polled_device;
 input->close = input_close_polled_device;

 return input_register_device(input);
}
