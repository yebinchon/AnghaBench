
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm {int dummy; } ;


 int ENODEV ;
 int nv_error (struct nouveau_therm*,char*,int) ;

__attribute__((used)) static int
pwm_info(struct nouveau_therm *therm, int *line, int *ctrl, int *indx)
{
 if (*line == 0x04) {
  *ctrl = 0x00e100;
  *line = 4;
  *indx = 0;
 } else
 if (*line == 0x09) {
  *ctrl = 0x00e100;
  *line = 9;
  *indx = 1;
 } else
 if (*line == 0x10) {
  *ctrl = 0x00e28c;
  *line = 0;
  *indx = 0;
 } else {
  nv_error(therm, "unknown pwm ctrl for gpio %d\n", *line);
  return -ENODEV;
 }

 return 0;
}
