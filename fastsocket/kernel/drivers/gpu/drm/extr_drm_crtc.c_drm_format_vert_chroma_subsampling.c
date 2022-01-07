
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
int drm_format_vert_chroma_subsampling(uint32_t format)
{
 switch (format) {
 case 131:
 case 129:
  return 4;
 case 130:
 case 128:
 case 133:
 case 132:
  return 2;
 default:
  return 1;
 }
}
