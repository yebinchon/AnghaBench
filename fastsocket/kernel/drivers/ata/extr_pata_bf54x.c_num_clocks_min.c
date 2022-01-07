
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short num_clocks_min(unsigned long tmin,
    unsigned long fsclk)
{
 unsigned long tmp ;
 unsigned short result;

 tmp = tmin * (fsclk/1000/1000) / 1000;
 result = (unsigned short)tmp;
 if ((tmp*1000*1000) < (tmin*(fsclk/1000))) {
  result++;
 }

 return result;
}
