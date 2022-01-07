
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * linux_lvl14 ;
 int * obp_lvl14 ;

void install_obp_ticker(void)
{

 if (!linux_lvl14)
  return;
 linux_lvl14[0] = obp_lvl14[0];
 linux_lvl14[1] = obp_lvl14[1];
 linux_lvl14[2] = obp_lvl14[2];
 linux_lvl14[3] = obp_lvl14[3];
}
