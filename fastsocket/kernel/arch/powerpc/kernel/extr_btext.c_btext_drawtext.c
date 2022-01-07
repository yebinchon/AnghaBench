
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_text_mapped ;
 int btext_drawchar (int ) ;

void btext_drawtext(const char *c, unsigned int len)
{
 if (!boot_text_mapped)
  return;
 while (len--)
  btext_drawchar(*c++);
}
