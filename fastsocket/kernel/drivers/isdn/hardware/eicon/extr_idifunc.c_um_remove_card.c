
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Id; int list; } ;
typedef TYPE_1__ udiva_card ;
typedef int diva_os_spin_lock_magic_t ;
typedef int DESCRIPTOR ;


 int DBG_ERR (char*) ;
 int DBG_LOG (char*) ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_free (int ,TYPE_1__*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int diva_user_mode_idi_remove_adapter (int ) ;
 TYPE_1__* find_card_in_list (int *) ;
 int list_del (int *) ;
 int ll_lock ;

__attribute__((used)) static void um_remove_card(DESCRIPTOR * d)
{
 diva_os_spin_lock_magic_t old_irql;
 udiva_card *card = ((void*)0);

 if (!(card = find_card_in_list(d))) {
  DBG_ERR(("cannot find card to remove"));
  return;
 }
 diva_user_mode_idi_remove_adapter(card->Id);
 diva_os_enter_spin_lock(&ll_lock, &old_irql, "remove card");
 list_del(&card->list);
 diva_os_leave_spin_lock(&ll_lock, &old_irql, "remove card");
 DBG_LOG(("idi proc entry removed for card %d", card->Id));
 diva_os_free(0, card);
}
