
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_text_mapped ;
 int btext_drawchar (int ) ;

void btext_drawstring(const char *c)
{
 if (!boot_text_mapped)
  return;
 while (*c)
  btext_drawchar(*c++);
}
