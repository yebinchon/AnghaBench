
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *firstchars(char *p, int nch)
{
 static char buf[2][128];
 static int t = 0;
 t = !t;
 memcpy(buf[t], p, nch);
 buf[t][nch] = 0;
 return buf[t];
}
