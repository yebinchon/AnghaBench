
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
display(char *dest, u_char * p)
{
 char *dp = dest;
 char ch = ' ';
 int l, octet = 3;

 p++;
 l = *p++;

 dp += sprintf(dp, "   \"");
 while (l--) {
  dp += sprintf(dp, "%c", *p++);


  if (*p & 0x80) {
   octet++;
   ch = ' ';
  } else if (ch == ' ')
   ch = 'a';

  else
   ch++;
 }
 *dp++ = '\"';
 *dp++ = '\n';
 return (dp - dest);
}
