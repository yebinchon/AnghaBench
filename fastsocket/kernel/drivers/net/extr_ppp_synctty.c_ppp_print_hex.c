
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;



__attribute__((used)) static void
ppp_print_hex (register __u8 * out, const __u8 * in, int count)
{
 register __u8 next_ch;
 static const char hex[] = "0123456789ABCDEF";

 while (count-- > 0) {
  next_ch = *in++;
  *out++ = hex[(next_ch >> 4) & 0x0F];
  *out++ = hex[next_ch & 0x0F];
  ++out;
 }
}
