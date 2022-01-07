
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct gpio_led {int gpio; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 int evm_led_data ;
 TYPE_2__* evm_led_dev ;
 struct gpio_led* evm_leds ;
 int platform_device_add (TYPE_2__*) ;
 int platform_device_add_data (TYPE_2__*,int *,int) ;
 TYPE_2__* platform_device_alloc (char*,int ) ;
 int platform_device_put (TYPE_2__*) ;

__attribute__((used)) static int
evm_led_setup(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{
 struct gpio_led *leds = evm_leds;
 int status;

 while (ngpio--) {
  leds->gpio = gpio++;
  leds++;
 }




 evm_led_dev = platform_device_alloc("leds-gpio", 0);
 platform_device_add_data(evm_led_dev,
   &evm_led_data, sizeof evm_led_data);

 evm_led_dev->dev.parent = &client->dev;
 status = platform_device_add(evm_led_dev);
 if (status < 0) {
  platform_device_put(evm_led_dev);
  evm_led_dev = ((void*)0);
 }
 return status;
}
