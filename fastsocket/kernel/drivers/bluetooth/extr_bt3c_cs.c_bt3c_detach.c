
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * priv; } ;
typedef int bt3c_info_t ;


 int bt3c_release (struct pcmcia_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void bt3c_detach(struct pcmcia_device *link)
{
 bt3c_info_t *info = link->priv;

 bt3c_release(link);
 kfree(info);
}
