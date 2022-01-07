
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* strncat (char*,char*,int) ;

__attribute__((used)) static char *chtostr(u8 * chars, int n)
{
 char tmp[256];
 tmp[0] = 0;
 return strncat(tmp, (char *)chars, n);
}
