
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int prbits (char*,int,int,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static
int
prbearer(char *dest, u_char * p)
{
 char *dp = dest, ch;

 p += 2;
 dp += sprintf(dp, "    octet 3  ");
 dp += prbits(dp, *p++, 8, 8);
 *dp++ = '\n';
 dp += sprintf(dp, "    octet 4  ");
 dp += prbits(dp, *p, 8, 8);
 *dp++ = '\n';
 if ((*p++ & 0x1f) == 0x18) {
  dp += sprintf(dp, "    octet 4.1 ");
  dp += prbits(dp, *p++, 8, 8);
  *dp++ = '\n';
 }

 if ((*p & 0x60) == 0x20) {
  ch = ' ';
  do {
   dp += sprintf(dp, "    octet 5%c ", ch);
   dp += prbits(dp, *p, 8, 8);
   *dp++ = '\n';
   if (ch == ' ')
    ch = 'a';
   else
    ch++;
  }
  while (!(*p++ & 0x80));
 }

 if ((*p & 0x60) == 0x40) {
  dp += sprintf(dp, "    octet 6  ");
  dp += prbits(dp, *p++, 8, 8);
  *dp++ = '\n';
 }

 if ((*p & 0x60) == 0x60) {
  dp += sprintf(dp, "    octet 7  ");
  dp += prbits(dp, *p++, 8, 8);
  *dp++ = '\n';
 }
 return (dp - dest);
}
