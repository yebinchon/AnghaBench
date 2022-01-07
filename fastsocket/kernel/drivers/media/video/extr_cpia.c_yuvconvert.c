
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*,int) ;
 int LIMIT (int) ;
__attribute__((used)) static int yuvconvert(unsigned char *yuv, unsigned char *rgb, int out_fmt,
        int in_uyvy, int mmap_kludge)
{
 int y, u, v, r, g, b, y1;

 switch(out_fmt) {
 case 132:
 case 131:
 case 134:
 case 133:
  if (in_uyvy) {
   u = *yuv++ - 128;
   y = (*yuv++ - 16) * 76310;
   v = *yuv++ - 128;
   y1 = (*yuv - 16) * 76310;
  } else {
   y = (*yuv++ - 16) * 76310;
   u = *yuv++ - 128;
   y1 = (*yuv++ - 16) * 76310;
   v = *yuv - 128;
  }
  r = 104635 * v;
  g = -25690 * u + -53294 * v;
  b = 132278 * u;
  break;
 default:
  y = *yuv++;
  u = *yuv++;
  y1 = *yuv++;
  v = *yuv;

  r = 0;
  g = 0;
  b = 0;
  break;
 }
 switch(out_fmt) {
 case 132:
  *rgb++ = ((LIMIT(g+y) & 0xf8) << 2) | (LIMIT(b+y) >> 3);
  *rgb++ = ((LIMIT(r+y) & 0xf8) >> 1) | (LIMIT(g+y) >> 6);
  *rgb++ = ((LIMIT(g+y1) & 0xf8) << 2) | (LIMIT(b+y1) >> 3);
  *rgb = ((LIMIT(r+y1) & 0xf8) >> 1) | (LIMIT(g+y1) >> 6);
  return 4;
 case 131:
  *rgb++ = ((LIMIT(g+y) & 0xfc) << 3) | (LIMIT(b+y) >> 3);
  *rgb++ = (LIMIT(r+y) & 0xf8) | (LIMIT(g+y) >> 5);
  *rgb++ = ((LIMIT(g+y1) & 0xfc) << 3) | (LIMIT(b+y1) >> 3);
  *rgb = (LIMIT(r+y1) & 0xf8) | (LIMIT(g+y1) >> 5);
  return 4;
 case 134:
  if (mmap_kludge) {
   *rgb++ = LIMIT(b+y);
   *rgb++ = LIMIT(g+y);
   *rgb++ = LIMIT(r+y);
   *rgb++ = LIMIT(b+y1);
   *rgb++ = LIMIT(g+y1);
   *rgb = LIMIT(r+y1);
  } else {
   *rgb++ = LIMIT(r+y);
   *rgb++ = LIMIT(g+y);
   *rgb++ = LIMIT(b+y);
   *rgb++ = LIMIT(r+y1);
   *rgb++ = LIMIT(g+y1);
   *rgb = LIMIT(b+y1);
  }
  return 6;
 case 133:
  if (mmap_kludge) {
   *rgb++ = LIMIT(b+y);
   *rgb++ = LIMIT(g+y);
   *rgb++ = LIMIT(r+y);
   rgb++;
   *rgb++ = LIMIT(b+y1);
   *rgb++ = LIMIT(g+y1);
   *rgb = LIMIT(r+y1);
  } else {
   *rgb++ = LIMIT(r+y);
   *rgb++ = LIMIT(g+y);
   *rgb++ = LIMIT(b+y);
   rgb++;
   *rgb++ = LIMIT(r+y1);
   *rgb++ = LIMIT(g+y1);
   *rgb = LIMIT(b+y1);
  }
  return 8;
 case 135:
  *rgb++ = y;
  *rgb = y1;
  return 2;
 case 129:
 case 128:
  *rgb++ = y;
  *rgb++ = u;
  *rgb++ = y1;
  *rgb = v;
  return 4;
 case 130:
  *rgb++ = u;
  *rgb++ = y;
  *rgb++ = v;
  *rgb = y1;
  return 4;
 default:
  DBG("Empty: %d\n", out_fmt);
  return 0;
 }
}
