
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int __pxa2xx_drv_pcmcia_probe (int *) ;

__attribute__((used)) static int pxa2xx_drv_pcmcia_probe(struct platform_device *dev)
{
 return __pxa2xx_drv_pcmcia_probe(&dev->dev);
}
