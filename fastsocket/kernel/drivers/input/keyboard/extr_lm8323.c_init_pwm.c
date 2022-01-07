
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int dev; int brightness_set; } ;
struct lm8323_pwm {int id; int running; int enabled; TYPE_1__ cdev; struct lm8323_chip* chip; int lock; int work; scalar_t__ desired_brightness; scalar_t__ brightness; scalar_t__ fade_time; } ;
struct lm8323_chip {struct lm8323_pwm* pwm; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 int INIT_WORK (int *,int ) ;
 int dev_attr_time ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ device_create_file (int ,int *) ;
 scalar_t__ led_classdev_register (struct device*,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int lm8323_pwm_set_brightness ;
 int lm8323_pwm_work ;
 int mutex_init (int *) ;

__attribute__((used)) static int init_pwm(struct lm8323_chip *lm, int id, struct device *dev,
      const char *name)
{
 struct lm8323_pwm *pwm;

 BUG_ON(id > 3);

 pwm = &lm->pwm[id - 1];

 pwm->id = id;
 pwm->fade_time = 0;
 pwm->brightness = 0;
 pwm->desired_brightness = 0;
 pwm->running = 0;
 pwm->enabled = 0;
 INIT_WORK(&pwm->work, lm8323_pwm_work);
 mutex_init(&pwm->lock);
 pwm->chip = lm;

 if (name) {
  pwm->cdev.name = name;
  pwm->cdev.brightness_set = lm8323_pwm_set_brightness;
  if (led_classdev_register(dev, &pwm->cdev) < 0) {
   dev_err(dev, "couldn't register PWM %d\n", id);
   return -1;
  }
  if (device_create_file(pwm->cdev.dev,
     &dev_attr_time) < 0) {
   dev_err(dev, "couldn't register time attribute\n");
   led_classdev_unregister(&pwm->cdev);
   return -1;
  }
  pwm->enabled = 1;
 }

 return 0;
}
