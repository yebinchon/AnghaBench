
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * priv; } ;
typedef int dtl1_info_t ;


 int dtl1_close (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void dtl1_release(struct pcmcia_device *link)
{
 dtl1_info_t *info = link->priv;

 dtl1_close(info);

 pcmcia_disable_device(link);
}
