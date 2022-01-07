
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int DRM_ERROR (char*,int) ;
__attribute__((used)) static bool evergreen_vm_reg_valid(u32 reg)
{

 if (reg >= 0x28000)
  return 1;


 switch (reg) {
 case 128:
 case 224:
 case 230:
 case 232:
 case 231:
 case 129:
 case 145:
 case 136:
 case 131:
 case 134:
 case 133:
 case 132:
 case 144:
 case 143:
 case 142:
 case 140:
 case 139:
 case 138:
 case 141:
 case 137:
 case 135:
 case 223:
 case 220:
 case 221:
 case 222:
 case 215:
 case 214:
 case 217:
 case 205:
 case 207:
 case 206:
 case 216:
 case 182:
 case 181:
 case 180:
 case 219:
 case 218:
 case 176:
 case 229:
 case 228:
 case 227:
 case 226:
 case 225:
 case 152:
 case 151:
 case 153:
 case 154:
 case 155:
 case 147:
 case 146:
 case 148:
 case 149:
 case 150:
 case 167:
 case 166:
 case 168:
 case 169:
 case 170:
 case 162:
 case 161:
 case 163:
 case 164:
 case 165:
 case 157:
 case 156:
 case 158:
 case 159:
 case 160:
 case 172:
 case 171:
 case 173:
 case 174:
 case 175:
 case 211:
 case 196:
 case 208:
 case 202:
 case 189:
 case 186:
 case 183:
 case 177:
 case 212:
 case 209:
 case 203:
 case 200:
 case 195:
 case 194:
 case 193:
 case 192:
 case 199:
 case 198:
 case 197:
 case 190:
 case 187:
 case 184:
 case 178:
 case 130:
 case 213:
 case 201:
 case 210:
 case 204:
 case 191:
 case 188:
 case 185:
 case 179:
 case 233:
 case 234:
  return 1;
 default:
  DRM_ERROR("Invalid register 0x%x in CS\n", reg);
  return 0;
 }
}
