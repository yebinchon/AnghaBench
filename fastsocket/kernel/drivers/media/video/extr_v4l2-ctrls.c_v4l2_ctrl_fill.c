
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_SLIDER ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;
 int V4L2_CTRL_TYPE_BOOLEAN ;
 int V4L2_CTRL_TYPE_BUTTON ;
 int V4L2_CTRL_TYPE_CTRL_CLASS ;
 int V4L2_CTRL_TYPE_INTEGER ;
 int V4L2_CTRL_TYPE_MENU ;
 int V4L2_CTRL_TYPE_STRING ;
 char* v4l2_ctrl_get_name (int) ;

void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
      s32 *min, s32 *max, s32 *step, s32 *def, u32 *flags)
{
 *name = v4l2_ctrl_get_name(id);
 *flags = 0;

 switch (id) {
 case 195:
 case 196:
 case 191:
 case 192:
 case 175:
 case 129:
 case 173:
 case 186:
 case 183:
 case 160:
 case 150:
 case 151:
 case 149:
 case 180:
 case 178:
 case 142:
 case 198:
 case 203:
 case 145:
 case 172:
 case 171:
  *type = V4L2_CTRL_TYPE_BOOLEAN;
  *min = 0;
  *max = *step = 1;
  break;
 case 147:
 case 134:
  *type = V4L2_CTRL_TYPE_BUTTON;
  *flags |= V4L2_CTRL_FLAG_WRITE_ONLY;
  *min = *max = *step = *def = 0;
  break;
 case 143:
 case 159:
 case 166:
 case 165:
 case 164:
 case 163:
 case 169:
 case 162:
 case 161:
 case 167:
 case 168:
 case 152:
 case 155:
 case 154:
 case 157:
 case 156:
 case 181:
 case 184:
 case 131:
  *type = V4L2_CTRL_TYPE_MENU;
  break;
 case 140:
 case 139:
  *type = V4L2_CTRL_TYPE_STRING;
  break;
 case 130:
 case 187:
 case 158:
 case 179:
  *type = V4L2_CTRL_TYPE_CTRL_CLASS;

  *flags |= V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_WRITE_ONLY;
  *min = *max = *step = *def = 0;
  break;
 case 190:
  *type = V4L2_CTRL_TYPE_INTEGER;
  *step = 1;
  *min = 0;

  *max = 0xFFFFFF;
  break;
 default:
  *type = V4L2_CTRL_TYPE_INTEGER;
  break;
 }
 switch (id) {
 case 166:
 case 162:
 case 154:
 case 153:
 case 157:
  *flags |= V4L2_CTRL_FLAG_UPDATE;
  break;
 case 193:
 case 206:
 case 205:
 case 194:
 case 188:
 case 182:
 case 137:
 case 174:
 case 138:
 case 189:
 case 176:
 case 136:
 case 185:
 case 141:
 case 197:
 case 199:
 case 202:
 case 200:
 case 204:
 case 201:
 case 146:
 case 144:
 case 132:
 case 133:
  *flags |= V4L2_CTRL_FLAG_SLIDER;
  break;
 case 148:
 case 135:
 case 177:
 case 170:
 case 128:
  *flags |= V4L2_CTRL_FLAG_WRITE_ONLY;
  break;
 }
}
