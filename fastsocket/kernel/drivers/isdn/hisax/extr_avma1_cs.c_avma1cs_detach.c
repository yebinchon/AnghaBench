
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int avma1cs_release (struct pcmcia_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void avma1cs_detach(struct pcmcia_device *link)
{
 DEBUG(0, "avma1cs_detach(0x%p)\n", link);
 avma1cs_release(link);
 kfree(link->priv);
}
