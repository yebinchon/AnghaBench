
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_device {int core_index; } ;


 int BCMA_MIPS_OOBSELOUTA30 ;
 int bcma_aread32 (struct bcma_device*,int ) ;
 scalar_t__ bcma_core_mips_bcm47162a0_quirk (struct bcma_device*) ;
 scalar_t__ bcma_core_mips_bcm5357b0_quirk (struct bcma_device*) ;

__attribute__((used)) static u32 bcma_core_mips_irqflag(struct bcma_device *dev)
{
 u32 flag;

 if (bcma_core_mips_bcm47162a0_quirk(dev))
  return dev->core_index;
 if (bcma_core_mips_bcm5357b0_quirk(dev))
  return dev->core_index;
 flag = bcma_aread32(dev, BCMA_MIPS_OOBSELOUTA30);

 if (flag)
  return flag & 0x1F;
 else
  return 0x3f;
}
