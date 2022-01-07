
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lp3944_platform_data {int leds_size; struct lp3944_led* leds; } ;
struct TYPE_3__ {int max_brightness; int name; int brightness; int flags; int blink_set; int brightness_set; } ;
struct lp3944_led_data {int id; int type; int work; TYPE_1__ ldev; int status; struct i2c_client* client; } ;
struct lp3944_led {int type; int name; int status; } ;
struct lp3944_data {struct lp3944_led_data* leds; } ;
struct i2c_client {int dev; } ;


 int INIT_WORK (int *,int ) ;
 int LED_CORE_SUSPENDRESUME ;



 int cancel_work_sync (int *) ;
 int dev_err (int *,char*,int ,...) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int lp3944_led_set (struct lp3944_led_data*,int ) ;
 int lp3944_led_set_blink ;
 int lp3944_led_set_brightness ;
 int lp3944_led_work ;

__attribute__((used)) static int lp3944_configure(struct i2c_client *client,
       struct lp3944_data *data,
       struct lp3944_platform_data *pdata)
{
 int i, err = 0;

 for (i = 0; i < pdata->leds_size; i++) {
  struct lp3944_led *pled = &pdata->leds[i];
  struct lp3944_led_data *led = &data->leds[i];
  led->client = client;
  led->id = i;

  switch (pled->type) {

  case 130:
  case 129:
   led->type = pled->type;
   led->status = pled->status;
   led->ldev.name = pled->name;
   led->ldev.max_brightness = 1;
   led->ldev.brightness_set = lp3944_led_set_brightness;
   led->ldev.blink_set = lp3944_led_set_blink;
   led->ldev.flags = LED_CORE_SUSPENDRESUME;

   INIT_WORK(&led->work, lp3944_led_work);
   err = led_classdev_register(&client->dev, &led->ldev);
   if (err < 0) {
    dev_err(&client->dev,
     "couldn't register LED %s\n",
     led->ldev.name);
    goto exit;
   }


   led->ldev.brightness = led->status;


   err = lp3944_led_set(led, led->status);
   if (err < 0) {
    dev_err(&client->dev,
     "%s couldn't set STATUS %d\n",
     led->ldev.name, led->status);
    goto exit;
   }
   break;

  case 128:
  default:
   break;

  }
 }
 return 0;

exit:
 if (i > 0)
  for (i = i - 1; i >= 0; i--)
   switch (pdata->leds[i].type) {

   case 130:
   case 129:
    led_classdev_unregister(&data->leds[i].ldev);
    cancel_work_sync(&data->leds[i].work);
    break;

   case 128:
   default:
    break;
   }

 return err;
}
