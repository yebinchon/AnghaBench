
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {struct pcmcia_device* p_dev; } ;


 int spectrum_reset (struct pcmcia_device*,int ) ;

__attribute__((used)) static int
spectrum_cs_hard_reset(struct orinoco_private *priv)
{
 struct orinoco_pccard *card = priv->card;
 struct pcmcia_device *link = card->p_dev;


 spectrum_reset(link, 0);

 return 0;
}
