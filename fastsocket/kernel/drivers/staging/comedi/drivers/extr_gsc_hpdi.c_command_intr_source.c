
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ command_channel_valid (unsigned int) ;

int command_intr_source(unsigned int channel)
{
 if (command_channel_valid(channel) == 0)
  channel = 1;
 return channel + 1;
}
