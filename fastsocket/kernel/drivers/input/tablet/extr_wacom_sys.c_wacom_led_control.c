
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* select; int llv; unsigned char hlv; unsigned char img_lum; } ;
struct wacom {int intf; TYPE_3__ led; TYPE_2__* wacom_wac; } ;
struct TYPE_5__ {TYPE_1__* features; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ INTUOS5L ;
 scalar_t__ INTUOS5S ;
 scalar_t__ WACOM_21UX2 ;
 scalar_t__ WACOM_24HD ;
 unsigned char WAC_CMD_LED_CONTROL ;
 int WAC_CMD_RETRIES ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int wacom_set_report (int ,int,unsigned char,unsigned char*,int,int ) ;

__attribute__((used)) static int wacom_led_control(struct wacom *wacom)
{
 unsigned char *buf;
 int retval;

 buf = kzalloc(9, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (wacom->wacom_wac->features->type >= INTUOS5S &&
     wacom->wacom_wac->features->type <= INTUOS5L) {





  int ring_led = wacom->led.select[0] & 0x03;
  int ring_lum = (((wacom->led.llv & 0x60) >> 5) - 1) & 0x03;
  int crop_lum = 0;

  buf[0] = WAC_CMD_LED_CONTROL;
  buf[1] = (crop_lum << 4) | (ring_lum << 2) | (ring_led);
 }
 else {
  int led = wacom->led.select[0] | 0x4;

  if (wacom->wacom_wac->features->type == WACOM_21UX2 ||
      wacom->wacom_wac->features->type == WACOM_24HD)
   led |= (wacom->led.select[1] << 4) | 0x40;

  buf[0] = WAC_CMD_LED_CONTROL;
  buf[1] = led;
  buf[2] = wacom->led.llv;
  buf[3] = wacom->led.hlv;
  buf[4] = wacom->led.img_lum;
 }

 retval = wacom_set_report(wacom->intf, 0x03, WAC_CMD_LED_CONTROL,
      buf, 9, WAC_CMD_RETRIES);
 kfree(buf);

 return retval;
}
