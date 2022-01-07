
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int soc_common_drv_pcmcia_remove (int *) ;

__attribute__((used)) static int sa11x0_drv_pcmcia_remove(struct platform_device *dev)
{
 return soc_common_drv_pcmcia_remove(&dev->dev);
}
