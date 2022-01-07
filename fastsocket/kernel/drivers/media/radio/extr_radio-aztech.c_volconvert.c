
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int volconvert(int level)
{
 level >>= 14;
 level &= 3;


 switch (level) {
 case 0:
  return 0;
 case 1:
  return 1;
 case 2:
  return 4;
 case 3:
  return 5;
 }
 return 0;
}
