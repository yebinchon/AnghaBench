
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* X25_ESCAPE (int const) ;

__attribute__((used)) static int x25_asy_esc(unsigned char *s, unsigned char *d, int len)
{
 unsigned char *ptr = d;
 unsigned char c;







 *ptr++ = 129;






 while (len-- > 0) {
  switch (c = *s++) {
  case 129:
   *ptr++ = 128;
   *ptr++ = X25_ESCAPE(129);
   break;
  case 128:
   *ptr++ = 128;
   *ptr++ = X25_ESCAPE(128);
   break;
  default:
   *ptr++ = c;
   break;
  }
 }
 *ptr++ = 129;
 return (ptr - d);
}
