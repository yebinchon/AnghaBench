
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct sta_info* challenge; } ;
struct TYPE_8__ {TYPE_3__ sta; } ;
struct sta_info {int aid; int timer; TYPE_4__ u; scalar_t__ ap; int tx_buf; struct sta_info* crypt; int priv; TYPE_2__* ops; int addr; TYPE_1__* local; } ;
struct ap_data {int ** sta_aid; int num_sta; int * proc; } ;
struct TYPE_6__ {int (* deinit ) (int ) ;} ;
struct TYPE_5__ {int dev; } ;


 int del_timer (int *) ;
 int hostap_event_expired_sta (int ,struct sta_info*) ;
 int kfree (struct sta_info*) ;
 int remove_proc_entry (char*,int *) ;
 int skb_queue_purge (int *) ;
 int sprintf (char*,char*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void ap_free_sta(struct ap_data *ap, struct sta_info *sta)
{
 if (sta->ap && sta->local)
  hostap_event_expired_sta(sta->local->dev, sta);

 if (ap->proc != ((void*)0)) {
  char name[20];
  sprintf(name, "%pM", sta->addr);
  remove_proc_entry(name, ap->proc);
 }

 if (sta->crypt) {
  sta->crypt->ops->deinit(sta->crypt->priv);
  kfree(sta->crypt);
  sta->crypt = ((void*)0);
 }

 skb_queue_purge(&sta->tx_buf);

 ap->num_sta--;

 if (sta->aid > 0)
  ap->sta_aid[sta->aid - 1] = ((void*)0);

 if (!sta->ap && sta->u.sta.challenge)
  kfree(sta->u.sta.challenge);
 del_timer(&sta->timer);


 kfree(sta);
}
