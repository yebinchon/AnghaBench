
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsb_packet {int tlabel; TYPE_2__* host; int node_id; } ;
struct TYPE_4__ {TYPE_1__* tl_pool; } ;
struct TYPE_3__ {unsigned long* map; } ;


 int ALL_NODES ;
 int BUG_ON (int) ;
 int NODEID_TO_NODE (int ) ;
 int __test_and_clear_bit (int,unsigned long*) ;
 int hpsb_tlabel_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tlabel_wq ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible (int *) ;

void hpsb_free_tlabel(struct hpsb_packet *packet)
{
 unsigned long flags, *tp;
 int tlabel, n = NODEID_TO_NODE(packet->node_id);

 if (unlikely(n == ALL_NODES))
  return;
 tp = packet->host->tl_pool[n].map;
 tlabel = packet->tlabel;
 BUG_ON(tlabel > 63 || tlabel < 0);

 spin_lock_irqsave(&hpsb_tlabel_lock, flags);
 BUG_ON(!__test_and_clear_bit(tlabel, tp));
 spin_unlock_irqrestore(&hpsb_tlabel_lock, flags);

 wake_up_interruptible(&tlabel_wq);
}
