
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vga_set_14font () ;
 int vga_set_480_scanlines () ;
 int vga_set_vertical_end (int) ;

__attribute__((used)) static void vga_set_80x34(void)
{
 vga_set_480_scanlines();
 vga_set_14font();
 vga_set_vertical_end(34*14);
}
