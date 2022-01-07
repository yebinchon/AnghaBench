
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_mode_fb_cmd2 {int pixel_format; } ;
 int DRM_FORMAT_BIG_ENDIAN ;
 int EINVAL ;

__attribute__((used)) static int format_check(const struct drm_mode_fb_cmd2 *r)
{
 uint32_t format = r->pixel_format & ~DRM_FORMAT_BIG_ENDIAN;

 switch (format) {
 case 167:
 case 160:
 case 178:
 case 141:
 case 145:
 case 152:
 case 170:
 case 181:
 case 185:
 case 156:
 case 174:
 case 143:
 case 147:
 case 151:
 case 169:
 case 183:
 case 187:
 case 155:
 case 173:
 case 159:
 case 177:
 case 158:
 case 176:
 case 140:
 case 144:
 case 150:
 case 168:
 case 180:
 case 184:
 case 154:
 case 172:
 case 142:
 case 146:
 case 153:
 case 171:
 case 182:
 case 186:
 case 157:
 case 175:
 case 134:
 case 128:
 case 149:
 case 148:
 case 179:
 case 166:
 case 164:
 case 165:
 case 161:
 case 163:
 case 162:
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
  return 0;
 default:
  return -EINVAL;
 }
}
