
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pcmcia_socket_dev_run (struct device*,int ) ;
 int socket_late_resume ;

void pcmcia_socket_dev_late_resume(struct device *dev)
{
 pcmcia_socket_dev_run(dev, socket_late_resume);
}
