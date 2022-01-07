
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {TYPE_1__* queue; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_2__ {scalar_t__ qid; } ;


 scalar_t__ QID_RX ;
 int RXD_W0_OWNER_NIC ;
 int TXD_W0_OWNER_NIC ;
 int TXD_W0_VALID ;
 int rt2x00_desc_read (int ,int ,int *) ;
 int rt2x00_get_field32 (int ,int ) ;

__attribute__((used)) static bool rt61pci_get_entry_state(struct queue_entry *entry)
{
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 u32 word;

 if (entry->queue->qid == QID_RX) {
  rt2x00_desc_read(entry_priv->desc, 0, &word);

  return rt2x00_get_field32(word, RXD_W0_OWNER_NIC);
 } else {
  rt2x00_desc_read(entry_priv->desc, 0, &word);

  return (rt2x00_get_field32(word, TXD_W0_OWNER_NIC) ||
          rt2x00_get_field32(word, TXD_W0_VALID));
 }
}
