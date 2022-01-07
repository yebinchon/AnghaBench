
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int drm_fb_get_bpp_depth (int,unsigned int*,int*) ;
 int drm_format_num_planes (int) ;

int drm_format_plane_cpp(uint32_t format, int plane)
{
 unsigned int depth;
 int bpp;

 if (plane >= drm_format_num_planes(format))
  return 0;

 switch (format) {
 case 134:
 case 128:
 case 141:
 case 140:
  return 2;
 case 147:
 case 145:
 case 146:
 case 142:
 case 144:
 case 143:
  return plane ? 2 : 1;
 case 139:
 case 133:
 case 138:
 case 132:
 case 137:
 case 131:
 case 136:
 case 130:
 case 135:
 case 129:
  return 1;
 default:
  drm_fb_get_bpp_depth(format, &depth, &bpp);
  return bpp >> 3;
 }
}
