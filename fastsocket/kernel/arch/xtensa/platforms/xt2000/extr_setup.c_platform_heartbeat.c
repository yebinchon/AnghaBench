
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_print (int,char*) ;

void platform_heartbeat(void)
{
 static int i=0, t = 0;

 if (--t < 0)
 {
  t = 59;
  led_print(7, i ? ".": " ");
  i ^= 1;
 }
}
