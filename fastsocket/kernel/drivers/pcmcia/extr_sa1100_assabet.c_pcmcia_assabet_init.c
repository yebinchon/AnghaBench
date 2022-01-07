
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;
 int assabet_pcmcia_ops ;
 int machine_has_neponset () ;
 scalar_t__ machine_is_assabet () ;
 int sa11xx_drv_pcmcia_probe (struct device*,int *,int,int) ;

int pcmcia_assabet_init(struct device *dev)
{
 int ret = -ENODEV;

 if (machine_is_assabet() && !machine_has_neponset())
  ret = sa11xx_drv_pcmcia_probe(dev, &assabet_pcmcia_ops, 1, 1);

 return ret;
}
