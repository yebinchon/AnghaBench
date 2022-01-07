
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct js_corr {int type; int* coef; } ;





__attribute__((used)) static int joydev_correct(int value, struct js_corr *corr)
{
 switch (corr->type) {

 case 128:
  break;

 case 129:
  value = value > corr->coef[0] ? (value < corr->coef[1] ? 0 :
   ((corr->coef[3] * (value - corr->coef[1])) >> 14)) :
   ((corr->coef[2] * (value - corr->coef[0])) >> 14);
  break;

 default:
  return 0;
 }

 return value < -32767 ? -32767 : (value > 32767 ? 32767 : value);
}
