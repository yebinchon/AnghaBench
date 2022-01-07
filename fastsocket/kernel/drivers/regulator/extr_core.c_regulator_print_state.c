
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t regulator_print_state(char *buf, int state)
{
 if (state > 0)
  return sprintf(buf, "enabled\n");
 else if (state == 0)
  return sprintf(buf, "disabled\n");
 else
  return sprintf(buf, "unknown\n");
}
