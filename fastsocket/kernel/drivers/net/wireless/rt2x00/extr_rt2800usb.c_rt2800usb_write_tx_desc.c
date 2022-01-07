
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct txentry_desc {int flags; } ;
struct skb_frame_desc {int desc_len; int * desc; int flags; } ;
struct queue_entry {TYPE_1__* queue; TYPE_2__* skb; } ;
typedef int __le32 ;
struct TYPE_4__ {int len; scalar_t__ data; } ;
struct TYPE_3__ {int winfo_size; } ;


 int ENTRY_TXD_BURST ;
 int ENTRY_TXD_ENCRYPT_IV ;
 int SKBDESC_DESC_IN_SKB ;
 int TXINFO_DESC_SIZE ;
 int TXINFO_W0_QSEL ;
 int TXINFO_W0_SW_USE_LAST_ROUND ;
 int TXINFO_W0_USB_DMA_NEXT_VALID ;
 int TXINFO_W0_USB_DMA_TX_BURST ;
 int TXINFO_W0_USB_DMA_TX_PKT_LEN ;
 int TXINFO_W0_WIV ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_2__*) ;
 int roundup (int ,int) ;
 int rt2x00_desc_read (int *,int ,int *) ;
 int rt2x00_desc_write (int *,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2800usb_write_tx_desc(struct queue_entry *entry,
        struct txentry_desc *txdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 __le32 *txi = (__le32 *) entry->skb->data;
 u32 word;




 rt2x00_desc_read(txi, 0, &word);






 rt2x00_set_field32(&word, TXINFO_W0_USB_DMA_TX_PKT_LEN,
      roundup(entry->skb->len, 4) - TXINFO_DESC_SIZE);
 rt2x00_set_field32(&word, TXINFO_W0_WIV,
      !test_bit(ENTRY_TXD_ENCRYPT_IV, &txdesc->flags));
 rt2x00_set_field32(&word, TXINFO_W0_QSEL, 2);
 rt2x00_set_field32(&word, TXINFO_W0_SW_USE_LAST_ROUND, 0);
 rt2x00_set_field32(&word, TXINFO_W0_USB_DMA_NEXT_VALID, 0);
 rt2x00_set_field32(&word, TXINFO_W0_USB_DMA_TX_BURST,
      test_bit(ENTRY_TXD_BURST, &txdesc->flags));
 rt2x00_desc_write(txi, 0, word);




 skbdesc->flags |= SKBDESC_DESC_IN_SKB;
 skbdesc->desc = txi;
 skbdesc->desc_len = TXINFO_DESC_SIZE + entry->queue->winfo_size;
}
