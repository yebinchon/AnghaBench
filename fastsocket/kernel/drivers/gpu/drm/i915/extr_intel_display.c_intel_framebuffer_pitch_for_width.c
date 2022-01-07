
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALIGN (int ,int) ;
 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static u32
intel_framebuffer_pitch_for_width(int width, int bpp)
{
 u32 pitch = DIV_ROUND_UP(width * bpp, 8);
 return ALIGN(pitch, 64);
}
