
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void qcm_hsv2rgb(u16 hue, u16 sat, u16 val, u16 *r, u16 *g, u16 *b)
{
 unsigned int segment, valsat;
 signed int h = (signed int) hue;
 unsigned int s = (sat - 32768) * 2;
 unsigned int v = val;
 unsigned int p;
 if (sat < 32768) {

  *r = val;
  *g = val;
  *b = val;
  return;
 }
 if (val <= (0xFFFF/8)) {

  *r = 0;
  *g = 0;
  *b = 0;
  return;
 }






 segment = (h + 10923) & 0xFFFF;
 segment = segment*3 >> 16;
 hue -= segment * 21845;
 h = hue;
 h *= 3;
 valsat = v*s >> 16;
 p = v - valsat;
 if (h >= 0) {
  unsigned int t = v - (valsat * (32769 - h) >> 15);
  switch (segment) {
  case 0:
   *r = v;
   *g = t;
   *b = p;
   break;
  case 1:
   *r = p;
   *g = v;
   *b = t;
   break;
  case 2:
   *r = t;
   *g = p;
   *b = v;
   break;
  }
 } else {
  unsigned int q = v - (valsat * (32769 + h) >> 15);
  switch (segment) {
  case 0:
   *r = v;
   *g = p;
   *b = q;
   break;
  case 1:
   *r = q;
   *g = v;
   *b = p;
   break;
  case 2:
   *r = p;
   *g = q;
   *b = v;
   break;
  }
 }
}
