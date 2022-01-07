
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct device_type* type; int release; int * bus; int parent; } ;
struct mmc_card {TYPE_1__ dev; struct mmc_host* host; } ;
struct device_type {int dummy; } ;


 int ENOMEM ;
 struct mmc_card* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 struct mmc_card* kzalloc (int,int ) ;
 int mmc_bus_type ;
 int mmc_classdev (struct mmc_host*) ;
 int mmc_release_card ;

struct mmc_card *mmc_alloc_card(struct mmc_host *host, struct device_type *type)
{
 struct mmc_card *card;

 card = kzalloc(sizeof(struct mmc_card), GFP_KERNEL);
 if (!card)
  return ERR_PTR(-ENOMEM);

 card->host = host;

 device_initialize(&card->dev);

 card->dev.parent = mmc_classdev(host);
 card->dev.bus = &mmc_bus_type;
 card->dev.release = mmc_release_card;
 card->dev.type = type;

 return card;
}
