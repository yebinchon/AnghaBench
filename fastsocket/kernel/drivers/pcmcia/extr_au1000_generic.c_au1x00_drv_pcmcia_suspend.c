
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int pm_message_t ;


 int pcmcia_socket_dev_suspend (int *) ;

__attribute__((used)) static int au1x00_drv_pcmcia_suspend(struct platform_device *dev,
         pm_message_t state)
{
 return pcmcia_socket_dev_suspend(&dev->dev);
}
