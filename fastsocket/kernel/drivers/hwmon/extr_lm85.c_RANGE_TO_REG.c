
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* lm85_range_map ;

__attribute__((used)) static int RANGE_TO_REG(int range)
{
 int i;


 for (i = 0; i < 15; ++i) {
  if (range <= (lm85_range_map[i] + lm85_range_map[i + 1]) / 2)
   break;
 }

 return i;
}
