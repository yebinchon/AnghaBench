
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w9966_findlen (int,int,int) ;

__attribute__((used)) static int w9966_calcscale(int size, int min, int max, int* beg, int* end, unsigned char* factor)
{
 int maxlen = max - min;
 int len = *end - *beg + 1;
 int newlen = w9966_findlen(len, size, maxlen);
 int err = newlen - len;


 if (newlen > maxlen || newlen < size)
  return -1;


 *factor = (64*size) / newlen;
 if (*factor == 64)
  *factor = 0x00;
 else
  *factor |= 0x80;


 *beg -= err / 2;
 *end += err - (err / 2);


 if (*beg < min) {
  *end += min - *beg;
  *beg += min - *beg;
 }
 if (*end > max) {
  *beg -= *end - max;
  *end -= *end - max;
 }

 return 0;
}
