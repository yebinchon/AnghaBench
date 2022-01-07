
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static inline u32 b1prot(int l2, int l3)
{
 switch (l2) {
 case 129:
 case 128:
 case 130:
  return 0;
 case 136:
 default:
  return 0;
 case 134:
  return 1;
        case 131:
        case 133:
        case 132:
  return 2;
        case 137:
  return 4;
 case 135:
  return 8;
 }
}
