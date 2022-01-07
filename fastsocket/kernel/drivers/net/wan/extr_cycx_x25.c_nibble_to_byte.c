
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void nibble_to_byte(u8 *s, u8 *d, u8 len, u8 nibble)
{
 if (nibble) {
  *d++ = '0' + (*s++ & 0x0F);
  --len;
 }

 while (len) {
  *d++ = '0' + (*s >> 4);

  if (--len) {
   *d++ = '0' + (*s & 0x0F);
   --len;
  } else break;

  ++s;
 }

 *d = '\0';
}
