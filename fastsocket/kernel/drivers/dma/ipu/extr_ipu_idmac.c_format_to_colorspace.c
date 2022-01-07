
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pixel_fmt { ____Placeholder_pixel_fmt } pixel_fmt ;
typedef enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;


 int IPU_COLORSPACE_RGB ;
 int IPU_COLORSPACE_YCBCR ;






__attribute__((used)) static enum ipu_color_space format_to_colorspace(enum pixel_fmt fmt)
{
 switch (fmt) {
 case 128:
 case 132:
 case 130:
 case 131:
 case 129:
  return IPU_COLORSPACE_RGB;
 default:
  return IPU_COLORSPACE_YCBCR;
 }
}
