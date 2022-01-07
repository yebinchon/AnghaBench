
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
 int S_IRUGO ;

__attribute__((used)) static mode_t qla4_attr_is_visible(int param_type, int param)
{
 switch (param_type) {
 case 207:
  switch (param) {
  case 206:
  case 204:
  case 205:
  case 202:
  case 203:
   return S_IRUGO;
  default:
   return 0;
  }
 case 185:
  switch (param) {
  case 144:
  case 143:
  case 179:
  case 178:
  case 139:
  case 131:
  case 140:
  case 152:
  case 151:
  case 165:
  case 150:
  case 148:
  case 163:
  case 180:
  case 181:
  case 129:
  case 147:
  case 128:
  case 146:
  case 184:
  case 168:
  case 142:
  case 182:
  case 171:
  case 183:
  case 172:
  case 173:
  case 174:
  case 164:
  case 177:
  case 161:
  case 162:
  case 145:
  case 176:
  case 149:
  case 134:
  case 133:
  case 138:
  case 136:
  case 135:
  case 132:
  case 137:
  case 157:
  case 160:
  case 158:
  case 159:
  case 155:
  case 154:
  case 153:
  case 156:
  case 130:
  case 175:
  case 167:
  case 141:
  case 166:
  case 170:
  case 169:
   return S_IRUGO;
  default:
   return 0;
  }
 case 201:
  switch (param) {
  case 199:
  case 196:
  case 197:
  case 198:
  case 200:
  case 193:
  case 195:
  case 191:
  case 194:
  case 192:
  case 187:
  case 186:
  case 188:
  case 190:
  case 189:
   return S_IRUGO;
  default:
   return 0;
  }
 case 225:
  switch (param) {
  case 235:
  case 221:
  case 263:
  case 250:
  case 249:
  case 245:
  case 258:
  case 244:
  case 243:
  case 259:
  case 223:
  case 261:
  case 219:
  case 253:
  case 262:
  case 254:
  case 248:
  case 213:
  case 217:
  case 212:
  case 215:
  case 214:
  case 238:
  case 229:
  case 227:
  case 246:
  case 255:
  case 256:
  case 230:
  case 234:
  case 237:
  case 209:
  case 222:
  case 231:
  case 257:
  case 242:
  case 264:
  case 220:
  case 228:
  case 232:
  case 241:
  case 239:
  case 240:
  case 226:
  case 210:
  case 233:
  case 252:
  case 251:
  case 211:
  case 216:
  case 260:
  case 208:
  case 224:
  case 218:
  case 247:
  case 236:
   return S_IRUGO;
  default:
   return 0;
  }
 }

 return 0;
}
