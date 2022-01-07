
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
 int S_IRUGO ;

__attribute__((used)) static mode_t iser_attr_is_visible(int param_type, int param)
{
 switch (param_type) {
 case 162:
  switch (param) {
  case 159:
  case 161:
  case 160:
   return S_IRUGO;
  default:
   return 0;
  }
 case 158:
  switch (param) {
  case 141:
  case 140:
  case 149:
  case 154:
  case 156:
  case 155:
  case 152:
  case 136:
  case 135:
  case 134:
  case 133:
  case 146:
  case 142:
  case 147:
  case 150:
  case 143:
  case 137:
  case 153:
  case 132:
  case 130:
  case 129:
  case 139:
  case 128:
  case 138:
  case 151:
  case 157:
  case 144:
  case 131:
  case 148:
  case 145:
   return S_IRUGO;
  default:
   return 0;
  }
 }

 return 0;
}
