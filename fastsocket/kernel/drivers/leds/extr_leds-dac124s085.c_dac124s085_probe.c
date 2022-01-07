
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; } ;
struct TYPE_3__ {int max_brightness; int brightness_set; void* brightness; int name; } ;
struct dac124s085_led {int id; TYPE_1__ ldev; int name; int mutex; int work; int lock; struct spi_device* spi; void* brightness; } ;
struct dac124s085 {struct dac124s085_led* leds; } ;


 int ARRAY_SIZE (struct dac124s085_led*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 void* LED_OFF ;
 int dac124s085_led_work ;
 int dac124s085_set_brightness ;
 int kfree (struct dac124s085*) ;
 struct dac124s085* kzalloc (int,int ) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,int) ;
 int spi_set_drvdata (struct spi_device*,struct dac124s085*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dac124s085_probe(struct spi_device *spi)
{
 struct dac124s085 *dac;
 struct dac124s085_led *led;
 int i, ret;

 dac = kzalloc(sizeof(*dac), GFP_KERNEL);
 if (!dac)
  return -ENOMEM;

 spi->bits_per_word = 16;

 for (i = 0; i < ARRAY_SIZE(dac->leds); i++) {
  led = dac->leds + i;
  led->id = i;
  led->brightness = LED_OFF;
  led->spi = spi;
  snprintf(led->name, sizeof(led->name), "dac124s085-%d", i);
  spin_lock_init(&led->lock);
  INIT_WORK(&led->work, dac124s085_led_work);
  mutex_init(&led->mutex);
  led->ldev.name = led->name;
  led->ldev.brightness = LED_OFF;
  led->ldev.max_brightness = 0xfff;
  led->ldev.brightness_set = dac124s085_set_brightness;
  ret = led_classdev_register(&spi->dev, &led->ldev);
  if (ret < 0)
   goto eledcr;
 }

 spi_set_drvdata(spi, dac);

 return 0;

eledcr:
 while (i--)
  led_classdev_unregister(&dac->leds[i].ldev);

 spi_set_drvdata(spi, ((void*)0));
 kfree(dac);
 return ret;
}
