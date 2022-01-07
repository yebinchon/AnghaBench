
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rxdone_entry_desc {int dev_flags; void* size; void* rssi; void* signal; int flags; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {TYPE_2__* queue; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_4__ {TYPE_1__* rt2x00dev; } ;
struct TYPE_3__ {void* rssi_offset; } ;


 int RXDONE_MY_BSS ;
 int RXDONE_SIGNAL_BITRATE ;
 int RXDONE_SIGNAL_PLCP ;
 int RXD_W0_CRC_ERROR ;
 int RXD_W0_DATABYTE_COUNT ;
 int RXD_W0_MY_BSS ;
 int RXD_W0_OFDM ;
 int RXD_W0_PHYSICAL_ERROR ;
 int RXD_W2_RSSI ;
 int RXD_W2_SIGNAL ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int rt2x00_desc_read (int ,int,int *) ;
 void* rt2x00_get_field32 (int ,int ) ;

__attribute__((used)) static void rt2500pci_fill_rxdone(struct queue_entry *entry,
      struct rxdone_entry_desc *rxdesc)
{
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 u32 word0;
 u32 word2;

 rt2x00_desc_read(entry_priv->desc, 0, &word0);
 rt2x00_desc_read(entry_priv->desc, 2, &word2);

 if (rt2x00_get_field32(word0, RXD_W0_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;
 if (rt2x00_get_field32(word0, RXD_W0_PHYSICAL_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_PLCP_CRC;







 rxdesc->signal = rt2x00_get_field32(word2, RXD_W2_SIGNAL);
 rxdesc->rssi = rt2x00_get_field32(word2, RXD_W2_RSSI) -
     entry->queue->rt2x00dev->rssi_offset;
 rxdesc->size = rt2x00_get_field32(word0, RXD_W0_DATABYTE_COUNT);

 if (rt2x00_get_field32(word0, RXD_W0_OFDM))
  rxdesc->dev_flags |= RXDONE_SIGNAL_PLCP;
 else
  rxdesc->dev_flags |= RXDONE_SIGNAL_BITRATE;
 if (rt2x00_get_field32(word0, RXD_W0_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;
}
