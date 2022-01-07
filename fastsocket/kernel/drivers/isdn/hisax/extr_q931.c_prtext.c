
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int sprintf (char*,char*) ;

__attribute__((used)) static int
prtext(char *dest, u_char * p)
{
 char *dp = dest;
 int l;

 p++;
 l = *p++;
 dp += sprintf(dp, "    ");

 while (l--)
  *dp++ = *p++;
 *dp++ = '\n';
 return (dp - dest);
}
