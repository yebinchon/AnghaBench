
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void clip_draw_rectangle(u32 *clipmap, int x, int y, int w, int h)
{
 register int startword, endword;
 register u32 bitsleft, bitsright;
 u32 *temp;
 if (x < 0) {
  w += x;
  x = 0;
 }
 if (y < 0) {
  h += y;
  y = 0;
 }
 if (w <= 0 || h <= 0 || x > 1023 || y > 639)
  return;
 if (x + w > 1024)
  w = 1024 - x;
 if (y + h > 640)
  h = 640 - y;
 startword = (x >> 5);
 endword = ((x + w) >> 5);
 bitsleft = (0xffffffff >> (x & 31));
 bitsright = (0xffffffff << (~((x + w) - (endword << 5))));
 temp = &clipmap[(y << 5) + startword];
 w = endword - startword;
 if (!w) {
  bitsleft |= bitsright;
  for (y = 0; y < h; y++) {
   *temp |= bitsleft;
   temp += 32;
  }
 } else {
  for (y = 0; y < h; y++) {
   *temp++ |= bitsleft;
   for (x = 1; x < w; x++)
    *temp++ = 0xffffffff;
   *temp |= bitsright;
   temp += (32 - w);
  }
 }
}
