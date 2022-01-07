
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;





__attribute__((used)) static int fm801_gp_open(struct gameport *gameport, int mode)
{
 switch (mode) {




 case 128:
  return 0;
 default:
  return -1;
 }

 return 0;
}
