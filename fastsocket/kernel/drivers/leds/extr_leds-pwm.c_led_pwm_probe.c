
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct led_pwm_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct led_pwm_platform_data {int num_leds; struct led_pwm* leds; } ;
struct TYPE_5__ {int flags; int brightness; int brightness_set; int default_trigger; int name; } ;
struct led_pwm_data {int pwm; TYPE_1__ cdev; int period; int max_brightness; int active_low; } ;
struct led_pwm {int pwm_period_ns; int max_brightness; int active_low; int default_trigger; int name; int pwm_id; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LED_CORE_SUSPENDRESUME ;
 int LED_OFF ;
 int dev_err (TYPE_2__*,char*,int ) ;
 int kfree (struct led_pwm_data*) ;
 struct led_pwm_data* kzalloc (int,int ) ;
 int led_classdev_register (TYPE_2__*,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int led_pwm_set ;
 int platform_set_drvdata (struct platform_device*,struct led_pwm_data*) ;
 int pwm_free (int ) ;
 int pwm_request (int ,int ) ;

__attribute__((used)) static int led_pwm_probe(struct platform_device *pdev)
{
 struct led_pwm_platform_data *pdata = pdev->dev.platform_data;
 struct led_pwm *cur_led;
 struct led_pwm_data *leds_data, *led_dat;
 int i, ret = 0;

 if (!pdata)
  return -EBUSY;

 leds_data = kzalloc(sizeof(struct led_pwm_data) * pdata->num_leds,
    GFP_KERNEL);
 if (!leds_data)
  return -ENOMEM;

 for (i = 0; i < pdata->num_leds; i++) {
  cur_led = &pdata->leds[i];
  led_dat = &leds_data[i];

  led_dat->pwm = pwm_request(cur_led->pwm_id,
    cur_led->name);
  if (IS_ERR(led_dat->pwm)) {
   dev_err(&pdev->dev, "unable to request PWM %d\n",
     cur_led->pwm_id);
   goto err;
  }

  led_dat->cdev.name = cur_led->name;
  led_dat->cdev.default_trigger = cur_led->default_trigger;
  led_dat->active_low = cur_led->active_low;
  led_dat->max_brightness = cur_led->max_brightness;
  led_dat->period = cur_led->pwm_period_ns;
  led_dat->cdev.brightness_set = led_pwm_set;
  led_dat->cdev.brightness = LED_OFF;
  led_dat->cdev.flags |= LED_CORE_SUSPENDRESUME;

  ret = led_classdev_register(&pdev->dev, &led_dat->cdev);
  if (ret < 0) {
   pwm_free(led_dat->pwm);
   goto err;
  }
 }

 platform_set_drvdata(pdev, leds_data);

 return 0;

err:
 if (i > 0) {
  for (i = i - 1; i >= 0; i--) {
   led_classdev_unregister(&leds_data[i].cdev);
   pwm_free(leds_data[i].pwm);
  }
 }

 kfree(leds_data);

 return ret;
}
