
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int pxa_camera_check_frame(u32 width, u32 height)
{

 return height < 32 || height > 2048 || width < 48 || width > 2048 ||
  (width & 0x01);
}
