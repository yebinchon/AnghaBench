
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * priv; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int SYM53C500_release (struct pcmcia_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void
SYM53C500_detach(struct pcmcia_device *link)
{
 DEBUG(0, "SYM53C500_detach(0x%p)\n", link);

 SYM53C500_release(link);

 kfree(link->priv);
 link->priv = ((void*)0);
}
