
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int au1x00_clock ;

void set_au1x00_speed(unsigned int new_freq)
{
 au1x00_clock = new_freq;
}
