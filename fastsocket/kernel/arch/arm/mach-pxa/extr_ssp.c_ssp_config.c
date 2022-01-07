
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {int mode; int flags; int psp_flags; int speed; struct ssp_device* ssp; } ;


 scalar_t__ SSCR0 ;
 scalar_t__ SSCR1 ;
 scalar_t__ SSPSP ;
 int __raw_writel (int,scalar_t__) ;

int ssp_config(struct ssp_dev *dev, u32 mode, u32 flags, u32 psp_flags, u32 speed)
{
 struct ssp_device *ssp = dev->ssp;

 dev->mode = mode;
 dev->flags = flags;
 dev->psp_flags = psp_flags;
 dev->speed = speed;


 __raw_writel((dev->speed | dev->mode), ssp->mmio_base + SSCR0);
 __raw_writel(dev->flags, ssp->mmio_base + SSCR1);
 __raw_writel(dev->psp_flags, ssp->mmio_base + SSPSP);

 return 0;
}
