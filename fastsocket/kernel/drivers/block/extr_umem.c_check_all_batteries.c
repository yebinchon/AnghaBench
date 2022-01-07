
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardinfo {int flags; scalar_t__ Active; int check_batteries; int lock; } ;


 int UM_FLAG_NO_BATT ;
 struct cardinfo* cards ;
 int check_batteries (struct cardinfo*) ;
 int init_battery_timer () ;
 int num_cards ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void check_all_batteries(unsigned long ptr)
{
 int i;

 for (i = 0; i < num_cards; i++)
  if (!(cards[i].flags & UM_FLAG_NO_BATT)) {
   struct cardinfo *card = &cards[i];
   spin_lock_bh(&card->lock);
   if (card->Active >= 0)
    card->check_batteries = 1;
   else
    check_batteries(card);
   spin_unlock_bh(&card->lock);
  }

 init_battery_timer();
}
