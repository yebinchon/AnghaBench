
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpc925_dev_info {scalar_t__ vbase; } ;


 int CPU_MASK_ENABLE ;
 scalar_t__ REG_APIMASK_OFFSET ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void cpc925_cpu_init(struct cpc925_dev_info *dev_info)
{
 u32 apimask;

 apimask = __raw_readl(dev_info->vbase + REG_APIMASK_OFFSET);
 if ((apimask & CPU_MASK_ENABLE) == 0) {
  apimask |= CPU_MASK_ENABLE;
  __raw_writel(apimask, dev_info->vbase + REG_APIMASK_OFFSET);
 }
}
