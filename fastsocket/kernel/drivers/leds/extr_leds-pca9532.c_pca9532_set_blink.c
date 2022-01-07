
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9532_led {int work; struct i2c_client* client; } ;
struct led_classdev {int brightness; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 struct pca9532_led* ldev_to_led (struct led_classdev*) ;
 int pca9532_calcpwm (struct i2c_client*,int ,int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int pca9532_set_blink(struct led_classdev *led_cdev,
 unsigned long *delay_on, unsigned long *delay_off)
{
 struct pca9532_led *led = ldev_to_led(led_cdev);
 struct i2c_client *client = led->client;
 int psc;
 int err = 0;

 if (*delay_on == 0 && *delay_off == 0) {

  *delay_on = 1000;
  *delay_off = 1000;
 }
 if (*delay_on != *delay_off || *delay_on > 1690 || *delay_on < 6)
  return -EINVAL;


 psc = (*delay_on * 152-1)/1000;
 err = pca9532_calcpwm(client, 0, psc, led_cdev->brightness);
 if (err)
  return err;
 schedule_work(&led->work);
 return 0;
}
