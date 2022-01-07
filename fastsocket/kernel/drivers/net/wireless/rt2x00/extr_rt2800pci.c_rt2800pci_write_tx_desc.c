
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct txentry_desc {int flags; } ;
struct skb_frame_desc {int skb_dma; int desc_len; int * desc; } ;
struct queue_entry_priv_mmio {int * desc; } ;
struct queue_entry {TYPE_1__* skb; struct queue_entry_priv_mmio* priv_data; } ;
typedef int __le32 ;
struct TYPE_2__ {int len; } ;


 int ENTRY_TXD_BURST ;
 int ENTRY_TXD_ENCRYPT_IV ;
 int ENTRY_TXD_MORE_FRAG ;
 int TXD_DESC_SIZE ;
 int TXD_W0_SD_PTR0 ;
 int TXD_W1_BURST ;
 int TXD_W1_DMA_DONE ;
 int TXD_W1_LAST_SEC0 ;
 int TXD_W1_LAST_SEC1 ;
 int TXD_W1_SD_LEN0 ;
 int TXD_W1_SD_LEN1 ;
 int TXD_W2_SD_PTR1 ;
 int TXD_W3_QSEL ;
 int TXD_W3_WIV ;
 int TXWI_DESC_SIZE ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_1__*) ;
 int rt2x00_desc_write (int *,int,scalar_t__) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2800pci_write_tx_desc(struct queue_entry *entry,
        struct txentry_desc *txdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 __le32 *txd = entry_priv->desc;
 u32 word;
 word = 0;
 rt2x00_set_field32(&word, TXD_W0_SD_PTR0, skbdesc->skb_dma);
 rt2x00_desc_write(txd, 0, word);

 word = 0;
 rt2x00_set_field32(&word, TXD_W1_SD_LEN1, entry->skb->len);
 rt2x00_set_field32(&word, TXD_W1_LAST_SEC1,
      !test_bit(ENTRY_TXD_MORE_FRAG, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W1_BURST,
      test_bit(ENTRY_TXD_BURST, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W1_SD_LEN0, TXWI_DESC_SIZE);
 rt2x00_set_field32(&word, TXD_W1_LAST_SEC0, 0);
 rt2x00_set_field32(&word, TXD_W1_DMA_DONE, 0);
 rt2x00_desc_write(txd, 1, word);

 word = 0;
 rt2x00_set_field32(&word, TXD_W2_SD_PTR1,
      skbdesc->skb_dma + TXWI_DESC_SIZE);
 rt2x00_desc_write(txd, 2, word);

 word = 0;
 rt2x00_set_field32(&word, TXD_W3_WIV,
      !test_bit(ENTRY_TXD_ENCRYPT_IV, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W3_QSEL, 2);
 rt2x00_desc_write(txd, 3, word);




 skbdesc->desc = txd;
 skbdesc->desc_len = TXD_DESC_SIZE;
}
