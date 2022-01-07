
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct skb_frame_desc {int desc_len; int desc; } ;
struct rt2x00_dev {TYPE_2__* ops; struct data_queue* rx; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {TYPE_3__* queue; int skb; struct queue_entry_priv_mmio* priv_data; } ;
struct data_queue {int dummy; } ;
struct TYPE_6__ {int desc_size; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {scalar_t__ (* get_entry_state ) (struct queue_entry*) ;} ;


 int GFP_ATOMIC ;
 int Q_INDEX ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int rt2x00lib_dmadone (struct queue_entry*) ;
 int rt2x00lib_dmastart (struct queue_entry*) ;
 int rt2x00lib_rxdone (struct queue_entry*,int ) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;
 scalar_t__ stub1 (struct queue_entry*) ;

bool rt2x00mmio_rxdone(struct rt2x00_dev *rt2x00dev)
{
 struct data_queue *queue = rt2x00dev->rx;
 struct queue_entry *entry;
 struct queue_entry_priv_mmio *entry_priv;
 struct skb_frame_desc *skbdesc;
 int max_rx = 16;

 while (--max_rx) {
  entry = rt2x00queue_get_entry(queue, Q_INDEX);
  entry_priv = entry->priv_data;

  if (rt2x00dev->ops->lib->get_entry_state(entry))
   break;




  skbdesc = get_skb_frame_desc(entry->skb);
  skbdesc->desc = entry_priv->desc;
  skbdesc->desc_len = entry->queue->desc_size;





  rt2x00lib_dmastart(entry);
  rt2x00lib_dmadone(entry);




  rt2x00lib_rxdone(entry, GFP_ATOMIC);
 }

 return !max_rx;
}
