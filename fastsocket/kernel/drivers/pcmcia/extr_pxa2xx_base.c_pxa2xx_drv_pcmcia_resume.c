
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pcmcia_socket_dev_resume (struct device*) ;
 int pxa2xx_configure_sockets (struct device*) ;

__attribute__((used)) static int pxa2xx_drv_pcmcia_resume(struct device *dev)
{
 pxa2xx_configure_sockets(dev);
 return pcmcia_socket_dev_resume(dev);
}
