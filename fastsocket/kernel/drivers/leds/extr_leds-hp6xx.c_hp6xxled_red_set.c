
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int HD64461_GPBDR ;
 int HD64461_GPBDR_LED_RED ;
 int inw (int ) ;
 int outw (int,int ) ;

__attribute__((used)) static void hp6xxled_red_set(struct led_classdev *led_cdev,
        enum led_brightness value)
{
 u16 v16;

 v16 = inw(HD64461_GPBDR);
 if (value)
  outw(v16 & (~HD64461_GPBDR_LED_RED), HD64461_GPBDR);
 else
  outw(v16 | HD64461_GPBDR_LED_RED, HD64461_GPBDR);
}
