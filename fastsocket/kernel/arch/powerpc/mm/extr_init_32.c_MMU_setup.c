
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __map_without_bats ;
 int __map_without_ltlbs ;
 int cmd_line ;
 scalar_t__ strstr (int ,char*) ;

void MMU_setup(void)
{

 if (strstr(cmd_line, "nobats")) {
  __map_without_bats = 1;
 }

 if (strstr(cmd_line, "noltlbs")) {
  __map_without_ltlbs = 1;
 }




}
