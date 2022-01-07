
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int socket_released; } ;
struct device {int dummy; } ;


 int complete (int *) ;
 struct pcmcia_socket* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void pcmcia_release_socket(struct device *dev)
{
 struct pcmcia_socket *socket = dev_get_drvdata(dev);

 complete(&socket->socket_released);
}
