
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_device {int dummy; } ;


 int BCMA_IOCTL ;
 int BCMA_IOCTL_CLK ;
 int BCMA_IOCTL_FGC ;
 int BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;
 int bcma_aread32 (struct bcma_device*,int ) ;

bool bcma_core_is_enabled(struct bcma_device *core)
{
 if ((bcma_aread32(core, BCMA_IOCTL) & (BCMA_IOCTL_CLK | BCMA_IOCTL_FGC))
     != BCMA_IOCTL_CLK)
  return 0;
 if (bcma_aread32(core, BCMA_RESET_CTL) & BCMA_RESET_CTL_RESET)
  return 0;
 return 1;
}
