
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t uvc_fraction_to_interval(uint32_t numerator, uint32_t denominator)
{
 uint32_t multiplier;


 if (denominator == 0 ||
     numerator/denominator >= ((uint32_t)-1)/10000000)
  return (uint32_t)-1;





 multiplier = 10000000;
 while (numerator > ((uint32_t)-1)/multiplier) {
  multiplier /= 2;
  denominator /= 2;
 }

 return denominator ? numerator * multiplier / denominator : 0;
}
