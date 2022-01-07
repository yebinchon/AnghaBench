
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rt2x00_dev {int bar_list_lock; int bar_list; TYPE_3__* ops; } ;
struct rt2x00_bar_list_entry {int list; int start_seq_num; int control; int ta; int ra; scalar_t__ block_acked; struct queue_entry* entry; } ;
struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; } ;
struct ieee80211_bar {int start_seq_num; int control; int ta; int ra; int frame_control; } ;
struct TYPE_6__ {scalar_t__ extra_tx_headroom; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {struct rt2x00_dev* rt2x00dev; } ;


 int GFP_ATOMIC ;
 int ieee80211_is_back_req (int ) ;
 struct rt2x00_bar_list_entry* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int list_add_tail_rcu (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rt2x00queue_bar_check(struct queue_entry *entry)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct ieee80211_bar *bar = (void *) (entry->skb->data +
        rt2x00dev->ops->extra_tx_headroom);
 struct rt2x00_bar_list_entry *bar_entry;

 if (likely(!ieee80211_is_back_req(bar->frame_control)))
  return;

 bar_entry = kmalloc(sizeof(*bar_entry), GFP_ATOMIC);






 if (!bar_entry)
  return;

 bar_entry->entry = entry;
 bar_entry->block_acked = 0;







 memcpy(bar_entry->ra, bar->ra, sizeof(bar->ra));
 memcpy(bar_entry->ta, bar->ta, sizeof(bar->ta));
 bar_entry->control = bar->control;
 bar_entry->start_seq_num = bar->start_seq_num;




 spin_lock_bh(&rt2x00dev->bar_list_lock);
 list_add_tail_rcu(&bar_entry->list, &rt2x00dev->bar_list);
 spin_unlock_bh(&rt2x00dev->bar_list_lock);
}
