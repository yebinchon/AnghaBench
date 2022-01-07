
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int llv; int hlv; int img_lum; int * select; } ;
struct wacom {TYPE_4__* intf; TYPE_3__ led; TYPE_2__* wacom_wac; } ;
struct TYPE_10__ {int kobj; } ;
struct TYPE_9__ {TYPE_5__ dev; } ;
struct TYPE_7__ {TYPE_1__* features; } ;
struct TYPE_6__ {int type; } ;
 int cintiq_led_attr_group ;
 int dev_err (TYPE_5__*,char*,int) ;
 int intuos4_led_attr_group ;
 int intuos5_led_attr_group ;
 int sysfs_create_group (int *,int *) ;
 int wacom_led_control (struct wacom*) ;

__attribute__((used)) static int wacom_initialize_leds(struct wacom *wacom)
{
 int error;


 switch (wacom->wacom_wac->features->type) {
 case 134:
 case 133:
  wacom->led.select[0] = 0;
  wacom->led.select[1] = 0;
  wacom->led.llv = 10;
  wacom->led.hlv = 20;
  wacom->led.img_lum = 10;
  error = sysfs_create_group(&wacom->intf->dev.kobj,
        &intuos4_led_attr_group);
  break;

 case 128:
 case 129:
  wacom->led.select[0] = 0;
  wacom->led.select[1] = 0;
  wacom->led.llv = 0;
  wacom->led.hlv = 0;
  wacom->led.img_lum = 0;

  error = sysfs_create_group(&wacom->intf->dev.kobj,
        &cintiq_led_attr_group);
  break;

 case 130:
 case 132:
 case 131:
  wacom->led.select[0] = 0;
  wacom->led.select[1] = 0;
  wacom->led.llv = 32;
  wacom->led.hlv = 0;
  wacom->led.img_lum = 0;

  error = sysfs_create_group(&wacom->intf->dev.kobj,
        &intuos5_led_attr_group);
  break;

 default:
  return 0;
 }

 if (error) {
  dev_err(&wacom->intf->dev,
   "cannot create sysfs group err: %d\n", error);
  return error;
 }
 wacom_led_control(wacom);

 return 0;
}
