
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa3xx_nand_info {int dummy; } ;


 int ETIMEDOUT ;
 int NDSR ;
 int NDSR_MASK ;
 int WAIT_EVENT_TIMEOUT ;
 int nand_readl (struct pxa3xx_nand_info*,int ) ;
 int nand_writel (struct pxa3xx_nand_info*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int wait_for_event(struct pxa3xx_nand_info *info, uint32_t event)
{
 int timeout = WAIT_EVENT_TIMEOUT;
 uint32_t ndsr;

 while (timeout--) {
  ndsr = nand_readl(info, NDSR) & NDSR_MASK;
  if (ndsr & event) {
   nand_writel(info, NDSR, ndsr);
   return 0;
  }
  udelay(10);
 }

 return -ETIMEDOUT;
}
