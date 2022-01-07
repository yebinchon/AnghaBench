
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int IntType; scalar_t__ Attributes; } ;
struct TYPE_3__ {int Handler; int Attributes; } ;
struct pcmcia_device {TYPE_2__ conf; TYPE_1__ irq; struct orinoco_private* priv; int dev; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {struct pcmcia_device* p_dev; } ;


 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 struct orinoco_private* alloc_orinocodev (int,int *,int ,int ) ;
 int orinoco_interrupt ;
 int spectrum_cs_config (struct pcmcia_device*) ;
 int spectrum_cs_hard_reset ;
 int spectrum_cs_stop_firmware ;

__attribute__((used)) static int
spectrum_cs_probe(struct pcmcia_device *link)
{
 struct orinoco_private *priv;
 struct orinoco_pccard *card;

 priv = alloc_orinocodev(sizeof(*card), &link->dev,
    spectrum_cs_hard_reset,
    spectrum_cs_stop_firmware);
 if (!priv)
  return -ENOMEM;
 card = priv->card;


 card->p_dev = link;
 link->priv = priv;



 link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
 link->irq.Handler = orinoco_interrupt;
 link->conf.Attributes = 0;
 link->conf.IntType = INT_MEMORY_AND_IO;


 return spectrum_cs_config(link);
}
