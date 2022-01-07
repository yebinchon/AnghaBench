
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pcmcia_socket_dev_suspend (struct device*) ;

__attribute__((used)) static int pxa2xx_drv_pcmcia_suspend(struct device *dev)
{
 return pcmcia_socket_dev_suspend(dev);
}
