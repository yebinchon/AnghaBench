
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *u32arr2hex(u32 data[], int n, char *buf)
{
 char *p;
 int i;

 for (i = 0, p = buf; i < n; i++, p += 11) {

  snprintf(p, 12, " %#010x", data[i]);
 }
 *p = '\0';
 return buf;
}
