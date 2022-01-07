
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,size_t) ;

__attribute__((used)) static int _absolute(char *action, int act, int r)
{
 size_t len = strlen(action);

 if (len < 2)
  len = 2;


 if (!strncmp("set", action, len))
  ;
 else if (!strncmp("grow", action, len))
  r += act;
 else if (!strncmp("shrink", action, len))
  r = act - r;
 else
  r = -EINVAL;

 return r;
}
