
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * linux_lvl14 ;
 int * lvl14_save ;

void install_linux_ticker(void)
{

 if (!linux_lvl14)
  return;
 linux_lvl14[0] = lvl14_save[0];
 linux_lvl14[1] = lvl14_save[1];
 linux_lvl14[2] = lvl14_save[2];
 linux_lvl14[3] = lvl14_save[3];
}
