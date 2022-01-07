
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orinoco_private {struct airport* card; } ;
struct TYPE_2__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;
struct airport {int * vaddr; scalar_t__ irq_requested; int irq; scalar_t__ ndev_registered; } ;


 int PMAC_FTR_AIRPORT_ENABLE ;
 struct orinoco_private* dev_get_drvdata (int *) ;
 int free_irq (int ,struct orinoco_private*) ;
 int free_orinocodev (struct orinoco_private*) ;
 int iounmap (int *) ;
 int macio_get_of_node (struct macio_dev*) ;
 int macio_release_resource (struct macio_dev*,int ) ;
 int macio_set_drvdata (struct macio_dev*,int *) ;
 int orinoco_if_del (struct orinoco_private*) ;
 int pmac_call_feature (int ,int ,int ,int ) ;
 int ssleep (int) ;

__attribute__((used)) static int
airport_detach(struct macio_dev *mdev)
{
 struct orinoco_private *priv = dev_get_drvdata(&mdev->ofdev.dev);
 struct airport *card = priv->card;

 if (card->ndev_registered)
  orinoco_if_del(priv);
 card->ndev_registered = 0;

 if (card->irq_requested)
  free_irq(card->irq, priv);
 card->irq_requested = 0;

 if (card->vaddr)
  iounmap(card->vaddr);
 card->vaddr = ((void*)0);

 macio_release_resource(mdev, 0);

 pmac_call_feature(PMAC_FTR_AIRPORT_ENABLE,
     macio_get_of_node(mdev), 0, 0);
 ssleep(1);

 macio_set_drvdata(mdev, ((void*)0));
 free_orinocodev(priv);

 return 0;
}
