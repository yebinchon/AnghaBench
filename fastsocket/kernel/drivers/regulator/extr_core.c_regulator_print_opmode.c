
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;






 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t regulator_print_opmode(char *buf, int mode)
{
 switch (mode) {
 case 131:
  return sprintf(buf, "fast\n");
 case 129:
  return sprintf(buf, "normal\n");
 case 130:
  return sprintf(buf, "idle\n");
 case 128:
  return sprintf(buf, "standby\n");
 }
 return sprintf(buf, "unknown\n");
}
