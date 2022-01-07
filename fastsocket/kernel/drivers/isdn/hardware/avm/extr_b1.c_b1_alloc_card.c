
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* card; int ncci_head; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_6__ {int nr_controllers; int lock; TYPE_1__* ctrlinfo; } ;
typedef TYPE_2__ avmcard ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (TYPE_2__*) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

avmcard *b1_alloc_card(int nr_controllers)
{
 avmcard *card;
 avmctrl_info *cinfo;
 int i;

 card = kzalloc(sizeof(*card), GFP_KERNEL);
 if (!card)
  return ((void*)0);

 cinfo = kzalloc(sizeof(*cinfo) * nr_controllers, GFP_KERNEL);
 if (!cinfo) {
  kfree(card);
  return ((void*)0);
 }

 card->ctrlinfo = cinfo;
 for (i = 0; i < nr_controllers; i++) {
  INIT_LIST_HEAD(&cinfo[i].ncci_head);
  cinfo[i].card = card;
 }
 spin_lock_init(&card->lock);
 card->nr_controllers = nr_controllers;

 return card;
}
