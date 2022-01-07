
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* lm85_zone_map ;

__attribute__((used)) static int ZONE_TO_REG(int zone)
{
 int i;

 for (i = 0; i <= 7; ++i)
  if (zone == lm85_zone_map[i])
   break;
 if (i > 7)
  i = 3;
 return i << 5;
}
