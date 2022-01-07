
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int inb (int) ;
 int out_idx (int,int ,int) ;
 int outb (int,int) ;
 int vga_crtc () ;

__attribute__((used)) static void vga_set_480_scanlines(void)
{
 u16 crtc;
 u8 csel;

 crtc = vga_crtc();

 out_idx(0x0c, crtc, 0x11);
 out_idx(0x0b, crtc, 0x06);
 out_idx(0x3e, crtc, 0x07);
 out_idx(0xea, crtc, 0x10);
 out_idx(0xdf, crtc, 0x12);
 out_idx(0xe7, crtc, 0x15);
 out_idx(0x04, crtc, 0x16);
 csel = inb(0x3cc);
 csel &= 0x0d;
 csel |= 0xe2;
 outb(csel, 0x3c2);
}
