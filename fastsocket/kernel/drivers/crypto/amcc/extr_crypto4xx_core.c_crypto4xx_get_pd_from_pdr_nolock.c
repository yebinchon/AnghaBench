
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_device {int pdr_head; int pdr_tail; } ;


 int ERING_WAS_FULL ;
 int PPC4XX_NUM_PD ;

__attribute__((used)) static u32 crypto4xx_get_pd_from_pdr_nolock(struct crypto4xx_device *dev)
{
 u32 retval;
 u32 tmp;

 retval = dev->pdr_head;
 tmp = (dev->pdr_head + 1) % PPC4XX_NUM_PD;

 if (tmp == dev->pdr_tail)
  return ERING_WAS_FULL;

 dev->pdr_head = tmp;

 return retval;
}
