
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int prbits (char*,int ,int,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
prcharge(char *dest, u_char * p)
{
 char *dp = dest;
 int l;

 p++;
 l = *p++ - 1;
 dp += sprintf(dp, "    GEA ");
 dp += prbits(dp, *p++, 8, 8);
 dp += sprintf(dp, "  Anzahl: ");

 while (l--)
  *dp++ = *p++;
 *dp++ = '\n';
 return (dp - dest);
}
