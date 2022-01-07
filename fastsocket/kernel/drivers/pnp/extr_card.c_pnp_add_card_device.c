
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct pnp_dev {int card_list; struct pnp_card* card; int number; TYPE_1__* protocol; TYPE_2__ dev; int * card_link; } ;
struct pnp_card {int devices; int number; int dev; } ;
struct TYPE_3__ {int number; } ;


 int dev_set_name (TYPE_2__*,char*,int ,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int pnp_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int pnp_add_card_device(struct pnp_card *card, struct pnp_dev *dev)
{
 dev->dev.parent = &card->dev;
 dev->card_link = ((void*)0);
 dev_set_name(&dev->dev, "%02x:%02x.%02x",
       dev->protocol->number, card->number, dev->number);
 spin_lock(&pnp_lock);
 dev->card = card;
 list_add_tail(&dev->card_list, &card->devices);
 spin_unlock(&pnp_lock);
 return 0;
}
