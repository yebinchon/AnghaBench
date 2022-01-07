
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*) ;

int command_channel_valid(unsigned int channel)
{
 if (channel == 0 || channel > 6) {
  printk("gsc_hpdi: bug! invalid cable command channel\n");
  return 0;
 }
 return 1;
}
