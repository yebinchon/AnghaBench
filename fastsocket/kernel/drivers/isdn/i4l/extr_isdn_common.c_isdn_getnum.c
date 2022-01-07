
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
isdn_getnum(char **p)
{
 int v = -1;

 while (*p[0] >= '0' && *p[0] <= '9')
  v = ((v < 0) ? 0 : (v * 10)) + (int) ((*p[0]++) - '0');
 return v;
}
