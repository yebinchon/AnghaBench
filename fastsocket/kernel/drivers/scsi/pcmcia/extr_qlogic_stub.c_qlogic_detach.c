
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int kfree (int ) ;
 int qlogic_release (struct pcmcia_device*) ;

__attribute__((used)) static void qlogic_detach(struct pcmcia_device *link)
{
 DEBUG(0, "qlogic_detach(0x%p)\n", link);

 qlogic_release(link);
 kfree(link->priv);

}
