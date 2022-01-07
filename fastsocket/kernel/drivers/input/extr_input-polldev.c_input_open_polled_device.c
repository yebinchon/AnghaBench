
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int poll_interval; int work; int (* flush ) (struct input_polled_dev*) ;} ;
struct input_dev {int dummy; } ;


 struct input_polled_dev* input_get_drvdata (struct input_dev*) ;
 int input_polldev_start_workqueue () ;
 int msecs_to_jiffies (int ) ;
 int polldev_wq ;
 int queue_delayed_work (int ,int *,int ) ;
 int stub1 (struct input_polled_dev*) ;

__attribute__((used)) static int input_open_polled_device(struct input_dev *input)
{
 struct input_polled_dev *dev = input_get_drvdata(input);
 int error;

 error = input_polldev_start_workqueue();
 if (error)
  return error;

 if (dev->flush)
  dev->flush(dev);

 queue_delayed_work(polldev_wq, &dev->work,
      msecs_to_jiffies(dev->poll_interval));

 return 0;
}
