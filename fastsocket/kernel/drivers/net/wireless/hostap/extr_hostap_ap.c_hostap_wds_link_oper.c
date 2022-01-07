
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wds_oper_type ;
typedef int u8 ;
struct wds_oper_data {struct wds_oper_data* next; int type; int addr; } ;
struct TYPE_5__ {TYPE_1__* ap; int lock; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_4__ {int wds_oper_queue; struct wds_oper_data* wds_oper_entries; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 struct wds_oper_data* kmalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void hostap_wds_link_oper(local_info_t *local, u8 *addr, wds_oper_type type)
{
 struct wds_oper_data *entry;

 entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry)
  return;
 memcpy(entry->addr, addr, ETH_ALEN);
 entry->type = type;
 spin_lock_bh(&local->lock);
 entry->next = local->ap->wds_oper_entries;
 local->ap->wds_oper_entries = entry;
 spin_unlock_bh(&local->lock);

 schedule_work(&local->ap->wds_oper_queue);
}
