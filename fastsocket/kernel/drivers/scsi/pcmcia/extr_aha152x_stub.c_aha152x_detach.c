
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int aha152x_release_cs (struct pcmcia_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void aha152x_detach(struct pcmcia_device *link)
{
    DEBUG(0, "aha152x_detach(0x%p)\n", link);

    aha152x_release_cs(link);


    kfree(link->priv);
}
