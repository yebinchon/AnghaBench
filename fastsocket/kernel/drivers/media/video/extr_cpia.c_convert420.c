
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*,int) ;
 int LIMIT (int) ;
__attribute__((used)) static int convert420(unsigned char *yuv, unsigned char *rgb, int out_fmt,
        int linesize, int mmap_kludge)
{
 int y, u, v, r, g, b, y1;




 switch(out_fmt) {
 case 132:
  y = (*yuv++ - 16) * 76310;
  y1 = (*yuv - 16) * 76310;
  r = ((*(rgb+1-linesize)) & 0x7c) << 1;
  g = ((*(rgb-linesize)) & 0xe0) >> 4 |
      ((*(rgb+1-linesize)) & 0x03) << 6;
  b = ((*(rgb-linesize)) & 0x1f) << 3;
  u = (-53294 * r - 104635 * g + 157929 * b) / 5756495;
  v = (157968 * r - 132278 * g - 25690 * b) / 5366159;
  r = 104635 * v;
  g = -25690 * u - 53294 * v;
  b = 132278 * u;
  *rgb++ = ((LIMIT(g+y) & 0xf8) << 2) | (LIMIT(b+y) >> 3);
  *rgb++ = ((LIMIT(r+y) & 0xf8) >> 1) | (LIMIT(g+y) >> 6);
  *rgb++ = ((LIMIT(g+y1) & 0xf8) << 2) | (LIMIT(b+y1) >> 3);
  *rgb = ((LIMIT(r+y1) & 0xf8) >> 1) | (LIMIT(g+y1) >> 6);
  return 4;
 case 131:
  y = (*yuv++ - 16) * 76310;
  y1 = (*yuv - 16) * 76310;
  r = (*(rgb+1-linesize)) & 0xf8;
  g = ((*(rgb-linesize)) & 0xe0) >> 3 |
      ((*(rgb+1-linesize)) & 0x07) << 5;
  b = ((*(rgb-linesize)) & 0x1f) << 3;
  u = (-53294 * r - 104635 * g + 157929 * b) / 5756495;
  v = (157968 * r - 132278 * g - 25690 * b) / 5366159;
  r = 104635 * v;
  g = -25690 * u - 53294 * v;
  b = 132278 * u;
  *rgb++ = ((LIMIT(g+y) & 0xfc) << 3) | (LIMIT(b+y) >> 3);
  *rgb++ = (LIMIT(r+y) & 0xf8) | (LIMIT(g+y) >> 5);
  *rgb++ = ((LIMIT(g+y1) & 0xfc) << 3) | (LIMIT(b+y1) >> 3);
  *rgb = (LIMIT(r+y1) & 0xf8) | (LIMIT(g+y1) >> 5);
  return 4;
  break;
 case 134:
 case 133:
  y = (*yuv++ - 16) * 76310;
  y1 = (*yuv - 16) * 76310;
  if (mmap_kludge) {
   r = *(rgb+2-linesize);
   g = *(rgb+1-linesize);
   b = *(rgb-linesize);
  } else {
   r = *(rgb-linesize);
   g = *(rgb+1-linesize);
   b = *(rgb+2-linesize);
  }
  u = (-53294 * r - 104635 * g + 157929 * b) / 5756495;
  v = (157968 * r - 132278 * g - 25690 * b) / 5366159;
  r = 104635 * v;
  g = -25690 * u + -53294 * v;
  b = 132278 * u;
  if (mmap_kludge) {
   *rgb++ = LIMIT(b+y);
   *rgb++ = LIMIT(g+y);
   *rgb++ = LIMIT(r+y);
   if(out_fmt == 133)
    rgb++;
   *rgb++ = LIMIT(b+y1);
   *rgb++ = LIMIT(g+y1);
   *rgb = LIMIT(r+y1);
  } else {
   *rgb++ = LIMIT(r+y);
   *rgb++ = LIMIT(g+y);
   *rgb++ = LIMIT(b+y);
   if(out_fmt == 133)
    rgb++;
   *rgb++ = LIMIT(r+y1);
   *rgb++ = LIMIT(g+y1);
   *rgb = LIMIT(b+y1);
  }
  if(out_fmt == 133)
   return 8;
  return 6;
 case 129:
 case 128:
  y = *yuv++;
  u = *(rgb+1-linesize);
  y1 = *yuv;
  v = *(rgb+3-linesize);
  *rgb++ = y;
  *rgb++ = u;
  *rgb++ = y1;
  *rgb = v;
  return 4;
 case 130:
  u = *(rgb-linesize);
  y = *yuv++;
  v = *(rgb+2-linesize);
  y1 = *yuv;
  *rgb++ = u;
  *rgb++ = y;
  *rgb++ = v;
  *rgb = y1;
  return 4;
 case 135:
  *rgb++ = *yuv++;
  *rgb = *yuv;
  return 2;
 default:
  DBG("Empty: %d\n", out_fmt);
  return 0;
 }
}
