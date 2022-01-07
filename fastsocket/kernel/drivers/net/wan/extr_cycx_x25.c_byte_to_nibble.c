
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



__attribute__((used)) static int byte_to_nibble(u8 *s, u8 *d, char *nibble)
{
 int i = 0;

 if (*nibble && *s) {
  d[i] |= *s++ - '0';
  *nibble = 0;
  ++i;
 }

 while (*s) {
  d[i] = (*s - '0') << 4;
  if (*(s + 1))
   d[i] |= *(s + 1) - '0';
  else {
   *nibble = 1;
   break;
  }
  ++i;
  s += 2;
 }

 return i;
}
