
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int PKDR ;
 int PKDR_LED_GREEN ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void hp6xxled_green_set(struct led_classdev *led_cdev,
          enum led_brightness value)
{
 u8 v8;

 v8 = inb(PKDR);
 if (value)
  outb(v8 & (~PKDR_LED_GREEN), PKDR);
 else
  outb(v8 | PKDR_LED_GREEN, PKDR);
}
