
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int merisc_board_id ;

const char *merisc_model(void)
{
 switch (merisc_board_id) {
 case 0:
 case 1:
  return "500-01";
 case 2:
  return "BT";
 default:
  return "Unknown";
 }
}
