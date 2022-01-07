
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dev; int owner; } ;


 int module_put (int ) ;
 int put_device (int *) ;

void pcmcia_put_socket(struct pcmcia_socket *skt)
{
 module_put(skt->owner);
 put_device(&skt->dev);
}
