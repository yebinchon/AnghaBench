
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ procconf; int myid; } ;
typedef TYPE_1__ hysdn_card ;
struct TYPE_6__ {int proc_net; } ;


 char* PROC_CONF_BASENAME ;
 unsigned char* PROC_SUBDIR_NAME ;
 TYPE_1__* card_root ;
 int hysdn_proc_entry ;
 int hysdn_proclog_release (TYPE_1__*) ;
 TYPE_2__ init_net ;
 int remove_proc_entry (unsigned char*,int ) ;
 int sprintf (unsigned char*,char*,char*,int ) ;

void
hysdn_procconf_release(void)
{
 hysdn_card *card;
 unsigned char conf_name[20];

 card = card_root;
 while (card) {

  sprintf(conf_name, "%s%d", PROC_CONF_BASENAME, card->myid);
  if (card->procconf)
   remove_proc_entry(conf_name, hysdn_proc_entry);

  hysdn_proclog_release(card);

  card = card->next;
 }

 remove_proc_entry(PROC_SUBDIR_NAME, init_net.proc_net);
}
