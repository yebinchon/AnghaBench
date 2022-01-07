
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skb_frame_desc {int skb_dma; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {TYPE_1__* queue; int skb; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_2__ {scalar_t__ qid; } ;


 scalar_t__ QID_RX ;
 int RXD_W0_OWNER_NIC ;
 int RXD_W1_BUFFER_ADDRESS ;
 int TXD_W0_OWNER_NIC ;
 int TXD_W0_VALID ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int rt2x00_desc_read (int ,int,int *) ;
 int rt2x00_desc_write (int ,int,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2500pci_clear_entry(struct queue_entry *entry)
{
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 u32 word;

 if (entry->queue->qid == QID_RX) {
  rt2x00_desc_read(entry_priv->desc, 1, &word);
  rt2x00_set_field32(&word, RXD_W1_BUFFER_ADDRESS, skbdesc->skb_dma);
  rt2x00_desc_write(entry_priv->desc, 1, word);

  rt2x00_desc_read(entry_priv->desc, 0, &word);
  rt2x00_set_field32(&word, RXD_W0_OWNER_NIC, 1);
  rt2x00_desc_write(entry_priv->desc, 0, word);
 } else {
  rt2x00_desc_read(entry_priv->desc, 0, &word);
  rt2x00_set_field32(&word, TXD_W0_VALID, 0);
  rt2x00_set_field32(&word, TXD_W0_OWNER_NIC, 0);
  rt2x00_desc_write(entry_priv->desc, 0, word);
 }
}
