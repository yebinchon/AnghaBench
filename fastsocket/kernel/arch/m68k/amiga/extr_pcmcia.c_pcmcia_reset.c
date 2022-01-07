
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 unsigned char gayle_reset ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

void pcmcia_reset(void)
{
 unsigned long reset_start_time = jiffies;
 unsigned char b;

 gayle_reset = 0x00;
 while (time_before(jiffies, reset_start_time + 1*HZ/100));
 b = gayle_reset;
}
