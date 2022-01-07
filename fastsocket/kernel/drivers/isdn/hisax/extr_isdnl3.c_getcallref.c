
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



int
getcallref(u_char * p)
{
 int l, cr = 0;

 p++;
 if (*p & 0xfe)
  return(-2);
 l = 0xf & *p++;
 if (!l)
  return(-1);
 cr = *p++;
 return (cr);
}
