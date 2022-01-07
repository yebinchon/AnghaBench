
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int qib_num_vls(int vls)
{
 switch (vls) {
 default:
 case 132:
  return 1;
 case 131:
  return 2;
 case 129:
  return 4;
 case 128:
  return 8;
 case 130:
  return 15;
 }
}
