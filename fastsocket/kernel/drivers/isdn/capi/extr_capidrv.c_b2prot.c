
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static inline u32 b2prot(int l2, int l3)
{
 switch (l2) {
 case 129:
 case 128:
 case 130:
 default:
  return 0;
 case 136:
 case 134:
        case 131:
        case 133:
        case 132:
 case 135:
  return 1;
        case 137:
  return 4;
 }
}
