
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_text_mapped ;
 int btext_drawchar (char) ;
 char hex_asc_hi (unsigned long) ;
 char hex_asc_lo (unsigned long) ;

void btext_drawhex(unsigned long v)
{
 if (!boot_text_mapped)
  return;
 btext_drawchar(hex_asc_hi(v >> 24));
 btext_drawchar(hex_asc_lo(v >> 24));
 btext_drawchar(hex_asc_hi(v >> 16));
 btext_drawchar(hex_asc_lo(v >> 16));
 btext_drawchar(hex_asc_hi(v >> 8));
 btext_drawchar(hex_asc_lo(v >> 8));
 btext_drawchar(hex_asc_hi(v));
 btext_drawchar(hex_asc_lo(v));
 btext_drawchar(' ');
}
