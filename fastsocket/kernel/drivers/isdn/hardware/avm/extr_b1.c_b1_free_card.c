
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ctrlinfo; } ;
typedef TYPE_1__ avmcard ;


 int kfree (TYPE_1__*) ;

void b1_free_card(avmcard *card)
{
 kfree(card->ctrlinfo);
 kfree(card);
}
