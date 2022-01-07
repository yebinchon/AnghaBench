
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * priv; } ;
typedef int bluecard_info_t ;


 int bluecard_release (struct pcmcia_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void bluecard_detach(struct pcmcia_device *link)
{
 bluecard_info_t *info = link->priv;

 bluecard_release(link);
 kfree(info);
}
