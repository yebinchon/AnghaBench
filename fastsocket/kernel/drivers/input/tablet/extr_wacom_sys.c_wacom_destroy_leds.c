
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wacom {TYPE_4__* intf; TYPE_2__* wacom_wac; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;
struct TYPE_6__ {TYPE_1__* features; } ;
struct TYPE_5__ {int type; } ;
 int cintiq_led_attr_group ;
 int intuos4_led_attr_group ;
 int intuos5_led_attr_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void wacom_destroy_leds(struct wacom *wacom)
{
 switch (wacom->wacom_wac->features->type) {
 case 134:
 case 133:
  sysfs_remove_group(&wacom->intf->dev.kobj,
       &intuos4_led_attr_group);
  break;

 case 128:
 case 129:
  sysfs_remove_group(&wacom->intf->dev.kobj,
       &cintiq_led_attr_group);
  break;

 case 130:
 case 132:
 case 131:
  sysfs_remove_group(&wacom->intf->dev.kobj,
       &intuos5_led_attr_group);
  break;
 }
}
