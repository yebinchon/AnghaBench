
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char*,int) ;

void atari_kbd_leds(unsigned int leds)
{
 char cmd[6] = {32, 0, 4, 1, 254 + ((leds & 4) != 0), 0};

 ikbd_write(cmd, 6);
}
