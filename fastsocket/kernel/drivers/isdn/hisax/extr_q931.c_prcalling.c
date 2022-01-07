
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int prbits (char*,int,int,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
prcalling(char *dest, u_char * p)
{
 int l;
 char *dp = dest;

 p++;
 l = *p++ - 1;
 dp += sprintf(dp, "    octet 3 ");
 dp += prbits(dp, *p, 8, 8);
 *dp++ = '\n';
 if (!(*p & 0x80)) {
  dp += sprintf(dp, "    octet 3a ");
  dp += prbits(dp, *++p, 8, 8);
  *dp++ = '\n';
  l--;
 };
 p++;

 dp += sprintf(dp, "    number digits ");
 while (l--)
  *dp++ = *p++;
 *dp++ = '\n';
 return (dp - dest);
}
