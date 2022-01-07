
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_device {int dummy; } ;


 int BCMA_IOCTL ;
 int BCMA_IOCTL_CLK ;
 int BCMA_IOCTL_FGC ;
 int BCMA_RESET_CTL ;
 int bcma_aread32 (struct bcma_device*,int ) ;
 int bcma_awrite32 (struct bcma_device*,int ,int) ;
 int bcma_core_disable (struct bcma_device*,int) ;
 int udelay (int) ;

int bcma_core_enable(struct bcma_device *core, u32 flags)
{
 bcma_core_disable(core, flags);

 bcma_awrite32(core, BCMA_IOCTL, (BCMA_IOCTL_CLK | BCMA_IOCTL_FGC | flags));
 bcma_aread32(core, BCMA_IOCTL);

 bcma_awrite32(core, BCMA_RESET_CTL, 0);
 udelay(1);

 bcma_awrite32(core, BCMA_IOCTL, (BCMA_IOCTL_CLK | flags));
 bcma_aread32(core, BCMA_IOCTL);
 udelay(1);

 return 0;
}
