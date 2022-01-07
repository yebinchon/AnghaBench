
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
prbits(char *dest, u_char b, int start, int len)
{
 char *dp = dest;

 b = b << (8 - start);
 while (len--) {
  if (b & 0x80)
   *dp++ = '1';
  else
   *dp++ = '0';
  b = b << 1;
 }
 return (dp - dest);
}
