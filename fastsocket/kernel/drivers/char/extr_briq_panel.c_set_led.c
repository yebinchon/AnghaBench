
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BRIQ_PANEL_LED_IOPORT ;
 int led ;
 int outb (int,int ) ;

__attribute__((used)) static void set_led(char state)
{
 if (state == 'R')
  led = 0x01;
 else if (state == 'G')
  led = 0x02;
 else if (state == 'Y')
  led = 0x03;
 else if (state == 'X')
  led = 0x00;
 outb(led, BRIQ_PANEL_LED_IOPORT);
}
