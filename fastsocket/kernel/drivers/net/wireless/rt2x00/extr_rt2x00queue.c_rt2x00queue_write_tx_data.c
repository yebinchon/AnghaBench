
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct txentry_desc {int dummy; } ;
struct rt2x00_dev {int cap_flags; TYPE_3__* ops; } ;
struct queue_entry {TYPE_4__* skb; TYPE_1__* queue; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {TYPE_2__* lib; int extra_tx_headroom; } ;
struct TYPE_6__ {int (* write_tx_data ) (struct queue_entry*,struct txentry_desc*) ;scalar_t__ (* get_entry_state ) (struct queue_entry*) ;} ;
struct TYPE_5__ {int qid; struct rt2x00_dev* rt2x00dev; } ;


 int DRV_PROJECT ;
 int EINVAL ;
 int ENOMEM ;
 int REQUIRE_DMA ;
 int memset (int ,int ,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*,int ,int ) ;
 scalar_t__ rt2x00queue_map_txskb (struct queue_entry*) ;
 int skb_push (TYPE_4__*,int ) ;
 scalar_t__ stub1 (struct queue_entry*) ;
 int stub2 (struct queue_entry*,struct txentry_desc*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rt2x00queue_write_tx_data(struct queue_entry *entry,
         struct txentry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;






 if (unlikely(rt2x00dev->ops->lib->get_entry_state &&
       rt2x00dev->ops->lib->get_entry_state(entry))) {
  rt2x00_err(rt2x00dev,
      "Corrupt queue %d, accessing entry which is not ours\n"
      "Please file bug report to %s\n",
      entry->queue->qid, DRV_PROJECT);
  return -EINVAL;
 }




 skb_push(entry->skb, rt2x00dev->ops->extra_tx_headroom);
 memset(entry->skb->data, 0, rt2x00dev->ops->extra_tx_headroom);




 if (rt2x00dev->ops->lib->write_tx_data)
  rt2x00dev->ops->lib->write_tx_data(entry, txdesc);




 if (test_bit(REQUIRE_DMA, &rt2x00dev->cap_flags) &&
     rt2x00queue_map_txskb(entry))
  return -ENOMEM;

 return 0;
}
