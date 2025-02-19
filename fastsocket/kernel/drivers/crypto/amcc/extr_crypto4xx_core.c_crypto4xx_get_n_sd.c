
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_device {int sdr_head; int gdr_tail; int sdr_tail; } ;


 int ERING_WAS_FULL ;
 int PPC4XX_NUM_SD ;

__attribute__((used)) static u32 crypto4xx_get_n_sd(struct crypto4xx_device *dev, int n)
{
 u32 retval;
 u32 tmp;

 if (n >= PPC4XX_NUM_SD)
  return ERING_WAS_FULL;

 retval = dev->sdr_head;
 tmp = (dev->sdr_head + n) % PPC4XX_NUM_SD;
 if (dev->sdr_head > dev->gdr_tail) {
  if (tmp < dev->sdr_head && tmp >= dev->sdr_tail)
   return ERING_WAS_FULL;
 } else if (dev->sdr_head < dev->sdr_tail) {
  if (tmp < dev->sdr_head || tmp >= dev->sdr_tail)
   return ERING_WAS_FULL;
 }
 dev->sdr_head = tmp;

 return retval;
}
