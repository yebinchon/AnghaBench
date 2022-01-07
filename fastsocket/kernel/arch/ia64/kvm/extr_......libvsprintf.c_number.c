
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int flags; int base; scalar_t__ field_width; int precision; } ;


 int LEFT ;
 int PLUS ;
 int SIGN ;
 char SMALL ;
 int SPACE ;
 int SPECIAL ;
 int ZEROPAD ;
 char* put_dec (char*,unsigned long long) ;

__attribute__((used)) static char *number(char *buf, char *end, unsigned long long num,
   struct printf_spec spec)
{

 static const char digits[16] = "0123456789ABCDEF";

 char tmp[66];
 char sign;
 char locase;
 int need_pfx = ((spec.flags & SPECIAL) && spec.base != 10);
 int i;



 locase = (spec.flags & SMALL);
 if (spec.flags & LEFT)
  spec.flags &= ~ZEROPAD;
 sign = 0;
 if (spec.flags & SIGN) {
  if ((signed long long) num < 0) {
   sign = '-';
   num = - (signed long long) num;
   spec.field_width--;
  } else if (spec.flags & PLUS) {
   sign = '+';
   spec.field_width--;
  } else if (spec.flags & SPACE) {
   sign = ' ';
   spec.field_width--;
  }
 }
 if (need_pfx) {
  spec.field_width--;
  if (spec.base == 16)
   spec.field_width--;
 }


 i = 0;
 if (num == 0)
  tmp[i++] = '0';





 else if (spec.base != 10) {
  int mask = spec.base - 1;
  int shift = 3;
  if (spec.base == 16) shift = 4;
  do {
   tmp[i++] = (digits[((unsigned char)num) & mask] | locase);
   num >>= shift;
  } while (num);
 } else {
  i = put_dec(tmp, num) - tmp;
 }


 if (i > spec.precision)
  spec.precision = i;

 spec.field_width -= spec.precision;
 if (!(spec.flags & (ZEROPAD+LEFT))) {
  while(--spec.field_width >= 0) {
   if (buf < end)
    *buf = ' ';
   ++buf;
  }
 }

 if (sign) {
  if (buf < end)
   *buf = sign;
  ++buf;
 }

 if (need_pfx) {
  if (buf < end)
   *buf = '0';
  ++buf;
  if (spec.base == 16) {
   if (buf < end)
    *buf = ('X' | locase);
   ++buf;
  }
 }

 if (!(spec.flags & LEFT)) {
  char c = (spec.flags & ZEROPAD) ? '0' : ' ';
  while (--spec.field_width >= 0) {
   if (buf < end)
    *buf = c;
   ++buf;
  }
 }

 while (i <= --spec.precision) {
  if (buf < end)
   *buf = '0';
  ++buf;
 }

 while (--i >= 0) {
  if (buf < end)
   *buf = tmp[i];
  ++buf;
 }

 while (--spec.field_width >= 0) {
  if (buf < end)
   *buf = ' ';
  ++buf;
 }
 return buf;
}
