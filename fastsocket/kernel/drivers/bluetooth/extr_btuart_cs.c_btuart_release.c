
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * priv; } ;
typedef int btuart_info_t ;


 int btuart_close (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void btuart_release(struct pcmcia_device *link)
{
 btuart_info_t *info = link->priv;

 btuart_close(info);

 pcmcia_disable_device(link);
}
