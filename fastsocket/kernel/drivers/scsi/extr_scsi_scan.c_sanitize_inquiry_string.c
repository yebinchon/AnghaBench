
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sanitize_inquiry_string(unsigned char *s, int len)
{
 int terminated = 0;

 for (; len > 0; (--len, ++s)) {
  if (*s == 0)
   terminated = 1;
  if (terminated || *s < 0x20 || *s > 0x7e)
   *s = ' ';
 }
}
