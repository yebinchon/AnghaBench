
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int store_utf8(u16 c, char *p)
{
 if (c < 0x80) {

  p[0] = c;
  return 1;
 } else if (c < 0x800) {

  p[0] = 0xc0 | (c >> 6);
  p[1] = 0x80 | (c & 0x3f);
  return 2;
     } else {

  p[0] = 0xe0 | (c >> 12);
  p[1] = 0x80 | ((c >> 6) & 0x3f);
  p[2] = 0x80 | (c & 0x3f);
  return 3;
     }
}
