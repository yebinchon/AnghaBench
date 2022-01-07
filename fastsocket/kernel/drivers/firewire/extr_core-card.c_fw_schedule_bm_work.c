
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int work; } ;


 int fw_card_get (struct fw_card*) ;
 int fw_card_put (struct fw_card*) ;
 int schedule_delayed_work (int *,unsigned long) ;

void fw_schedule_bm_work(struct fw_card *card, unsigned long delay)
{
 int scheduled;

 fw_card_get(card);
 scheduled = schedule_delayed_work(&card->work, delay);
 if (!scheduled)
  fw_card_put(card);
}
