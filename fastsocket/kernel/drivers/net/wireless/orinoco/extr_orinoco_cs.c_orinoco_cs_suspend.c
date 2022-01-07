
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct orinoco_private* priv; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {int hard_reset_in_progress; } ;


 int orinoco_down (struct orinoco_private*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int orinoco_cs_suspend(struct pcmcia_device *link)
{
 struct orinoco_private *priv = link->priv;
 struct orinoco_pccard *card = priv->card;




 if (!test_bit(0, &card->hard_reset_in_progress))
  orinoco_down(priv);

 return 0;
}
