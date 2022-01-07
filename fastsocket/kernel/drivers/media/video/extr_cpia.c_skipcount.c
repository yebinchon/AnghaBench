
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int skipcount(int count, int fmt)
{
 switch(fmt) {
 case 135:
  return count;
 case 132:
 case 131:
 case 129:
 case 128:
 case 130:
  return 2*count;
 case 134:
  return 3*count;
 case 133:
  return 4*count;
 default:
  return 0;
 }
}
