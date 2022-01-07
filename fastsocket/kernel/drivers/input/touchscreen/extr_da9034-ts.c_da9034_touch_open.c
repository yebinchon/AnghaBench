
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct da9034_touch {int state; int da9034_dev; int notifier; } ;


 int DA9034_EVENT_PEN_DOWN ;
 int DA9034_EVENT_TSI_READY ;
 int DA9034_LDO_ADC_EN ;
 int DA9034_MANUAL_CTRL ;
 int DA9034_TSI_CTRL1 ;
 int DA9034_TSI_CTRL2 ;
 int EBUSY ;
 int STATE_IDLE ;
 int da903x_register_notifier (int ,int *,int) ;
 int da903x_set_bits (int ,int ,int ) ;
 int da903x_write (int ,int ,int) ;
 int detect_pen_down (struct da9034_touch*,int) ;
 struct da9034_touch* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int da9034_touch_open(struct input_dev *dev)
{
 struct da9034_touch *touch = input_get_drvdata(dev);
 int ret;

 ret = da903x_register_notifier(touch->da9034_dev, &touch->notifier,
   DA9034_EVENT_PEN_DOWN | DA9034_EVENT_TSI_READY);
 if (ret)
  return -EBUSY;


 ret = da903x_set_bits(touch->da9034_dev,
   DA9034_MANUAL_CTRL, DA9034_LDO_ADC_EN);
 if (ret)
  return ret;


 ret = da903x_write(touch->da9034_dev, DA9034_TSI_CTRL1, 0x1b);
 if (ret)
  return ret;

 ret = da903x_write(touch->da9034_dev, DA9034_TSI_CTRL2, 0x00);
 if (ret)
  return ret;

 touch->state = STATE_IDLE;
 detect_pen_down(touch, 1);

 return 0;
}
