
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct cm109_dev {int buzzer_state; int resetting; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 unsigned int EV_SND ;


 int cm109_toggle_buzzer_async (struct cm109_dev*) ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,int) ;
 struct cm109_dev* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int cm109_input_ev(struct input_dev *idev, unsigned int type,
     unsigned int code, int value)
{
 struct cm109_dev *dev = input_get_drvdata(idev);

 dev_dbg(&dev->udev->dev,
  "input_ev: type=%u code=%u value=%d\n", type, code, value);

 if (type != EV_SND)
  return -EINVAL;

 switch (code) {
 case 128:
 case 129:
  dev->buzzer_state = !!value;
  if (!dev->resetting)
   cm109_toggle_buzzer_async(dev);
  return 0;

 default:
  return -EINVAL;
 }
}
