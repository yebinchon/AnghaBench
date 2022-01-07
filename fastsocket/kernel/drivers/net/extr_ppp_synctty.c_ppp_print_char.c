
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;



__attribute__((used)) static void
ppp_print_char (register __u8 * out, const __u8 * in, int count)
{
 register __u8 next_ch;

 while (count-- > 0) {
  next_ch = *in++;

  if (next_ch < 0x20 || next_ch > 0x7e)
   *out++ = '.';
  else {
   *out++ = next_ch;
   if (next_ch == '%')
    *out++ = '%';
  }
 }
 *out = '\0';
}
