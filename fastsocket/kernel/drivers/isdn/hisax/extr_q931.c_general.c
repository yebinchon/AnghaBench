
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int prbits (char*,int ,int,int) ;
 int sprintf (char*,char*,int,char) ;

__attribute__((used)) static int
general(char *dest, u_char * p)
{
 char *dp = dest;
 char ch = ' ';
 int l, octet = 3;

 p++;
 l = *p++;

 while (l--) {
  dp += sprintf(dp, "    octet %d%c ", octet, ch);
  dp += prbits(dp, *p++, 8, 8);
  *dp++ = '\n';


  if (*p & 0x80) {
   octet++;
   ch = ' ';
  } else if (ch == ' ')
   ch = 'a';
  else
   ch++;
 }
 return (dp - dest);
}
