
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int out_idx (int,int ,int) ;
 int vga_crtc () ;

__attribute__((used)) static void vga_set_vertical_end(int lines)
{
 u16 crtc;
 u8 ovfw;
 int end = lines-1;

 crtc = vga_crtc();

 ovfw = 0x3c | ((end >> (8-1)) & 0x02) | ((end >> (9-6)) & 0x40);

 out_idx(ovfw, crtc, 0x07);
 out_idx(end, crtc, 0x12);
}
