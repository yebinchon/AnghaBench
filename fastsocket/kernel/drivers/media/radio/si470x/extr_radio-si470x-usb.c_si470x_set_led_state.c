
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int dummy; } ;
typedef int buf ;


 int EINVAL ;
 unsigned char LED_COMMAND ;
 unsigned char LED_REPORT ;
 int LED_REPORT_SIZE ;
 int si470x_set_report (struct si470x_device*,void*,int) ;

__attribute__((used)) static int si470x_set_led_state(struct si470x_device *radio,
  unsigned char led_state)
{
 unsigned char buf[LED_REPORT_SIZE];
 int retval;

 buf[0] = LED_REPORT;
 buf[1] = LED_COMMAND;
 buf[2] = led_state;

 retval = si470x_set_report(radio, (void *) &buf, sizeof(buf));

 return (retval < 0) ? -EINVAL : 0;
}
