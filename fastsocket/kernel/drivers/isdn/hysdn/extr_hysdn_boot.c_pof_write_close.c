
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct boot_data {int dummy; } ;
struct TYPE_5__ {scalar_t__ state; int debug_flags; int (* set_errlog_state ) (TYPE_1__*,int) ;struct boot_data* boot; } ;
typedef TYPE_1__ hysdn_card ;


 scalar_t__ CARD_STATE_RUN ;
 int EFAULT ;
 int LOG_POF_OPEN ;
 int hysdn_addlog (TYPE_1__*,char*) ;
 int kfree (struct boot_data*) ;
 int stub1 (TYPE_1__*,int) ;

int
pof_write_close(hysdn_card * card)
{
 struct boot_data *boot = card->boot;

 if (!boot)
  return (-EFAULT);

 card->boot = ((void*)0);
 kfree(boot);

 if (card->state == CARD_STATE_RUN)
  card->set_errlog_state(card, 1);

 if (card->debug_flags & LOG_POF_OPEN)
  hysdn_addlog(card, "POF close: success");

 return (0);
}
