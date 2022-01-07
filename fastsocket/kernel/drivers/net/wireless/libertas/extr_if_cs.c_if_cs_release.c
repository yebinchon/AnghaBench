
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int AssignedIRQ; } ;
struct pcmcia_device {TYPE_1__ irq; struct if_cs_card* priv; } ;
struct if_cs_card {scalar_t__ iobase; } ;


 int LBS_DEB_CS ;
 int free_irq (int ,struct if_cs_card*) ;
 int ioport_unmap (scalar_t__) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void if_cs_release(struct pcmcia_device *p_dev)
{
 struct if_cs_card *card = p_dev->priv;

 lbs_deb_enter(LBS_DEB_CS);

 free_irq(p_dev->irq.AssignedIRQ, card);
 pcmcia_disable_device(p_dev);
 if (card->iobase)
  ioport_unmap(card->iobase);

 lbs_deb_leave(LBS_DEB_CS);
}
