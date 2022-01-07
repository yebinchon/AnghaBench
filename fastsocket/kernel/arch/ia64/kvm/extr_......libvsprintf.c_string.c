
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int flags; int field_width; int precision; } ;


 int LEFT ;
 unsigned long PAGE_SIZE ;
 int strnlen (char const*,int ) ;

__attribute__((used)) static char *string(char *buf, char *end, const char *s, struct printf_spec spec)
{
 int len, i;

 if ((unsigned long)s < PAGE_SIZE)
  s = "(null)";

 len = strnlen(s, spec.precision);

 if (!(spec.flags & LEFT)) {
  while (len < spec.field_width--) {
   if (buf < end)
    *buf = ' ';
   ++buf;
  }
 }
 for (i = 0; i < len; ++i) {
  if (buf < end)
   *buf = *s;
  ++buf; ++s;
 }
 while (len < spec.field_width--) {
  if (buf < end)
   *buf = ' ';
  ++buf;
 }
 return buf;
}
