
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int work; } ;
struct input_dev {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct input_polled_dev* input_get_drvdata (struct input_dev*) ;
 int input_polldev_stop_workqueue () ;

__attribute__((used)) static void input_close_polled_device(struct input_dev *input)
{
 struct input_polled_dev *dev = input_get_drvdata(input);

 cancel_delayed_work_sync(&dev->work);
 input_polldev_stop_workqueue();
}
