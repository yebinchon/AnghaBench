
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
int drm_format_horz_chroma_subsampling(uint32_t format)
{
 switch (format) {
 case 136:
 case 131:
 case 137:
 case 132:
  return 4;
 case 133:
 case 128:
 case 139:
 case 138:
 case 143:
 case 141:
 case 142:
 case 140:
 case 134:
 case 129:
 case 135:
 case 130:
  return 2;
 default:
  return 1;
 }
}
