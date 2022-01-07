
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int merisc_board_id ;

const char *merisc_revision(void)
{
 switch (merisc_board_id) {
 case 0:
  return "B";
 case 1:
  return "D";
 case 2:
  return "A";
 default:
  return "Unknown";
 }
}
