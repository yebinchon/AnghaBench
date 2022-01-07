
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int signal; int service; int length_low; int length_high; int ifs; } ;
struct TYPE_6__ {TYPE_2__ plcp; } ;
struct txentry_desc {scalar_t__ rate_mode; int length; int flags; TYPE_3__ u; } ;
struct skb_frame_desc {int skb_dma; int desc_len; int * desc; } ;
struct queue_entry_priv_mmio {int * desc; } ;
struct queue_entry {TYPE_1__* queue; struct queue_entry_priv_mmio* priv_data; int skb; } ;
typedef int __le32 ;
struct TYPE_4__ {int aifs; int cw_min; int cw_max; } ;


 int CIPHER_NONE ;
 int ENTRY_TXD_ACK ;
 int ENTRY_TXD_MORE_FRAG ;
 int ENTRY_TXD_REQ_TIMESTAMP ;
 int ENTRY_TXD_RETRY_MODE ;
 int ENTRY_TXD_RTS_FRAME ;
 int IEEE80211_HEADER ;
 scalar_t__ RATE_MODE_OFDM ;
 int TXD_DESC_SIZE ;
 int TXD_W0_ACK ;
 int TXD_W0_CIPHER_ALG ;
 int TXD_W0_CIPHER_OWNER ;
 int TXD_W0_DATABYTE_COUNT ;
 int TXD_W0_IFS ;
 int TXD_W0_MORE_FRAG ;
 int TXD_W0_OFDM ;
 int TXD_W0_OWNER_NIC ;
 int TXD_W0_RETRY_MODE ;
 int TXD_W0_TIMESTAMP ;
 int TXD_W0_VALID ;
 int TXD_W10_RTS ;
 int TXD_W1_BUFFER_ADDRESS ;
 int TXD_W2_AIFS ;
 int TXD_W2_CWMAX ;
 int TXD_W2_CWMIN ;
 int TXD_W2_IV_OFFSET ;
 int TXD_W3_PLCP_LENGTH_HIGH ;
 int TXD_W3_PLCP_LENGTH_LOW ;
 int TXD_W3_PLCP_SERVICE ;
 int TXD_W3_PLCP_SIGNAL ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int rt2x00_desc_read (int *,int,int *) ;
 int rt2x00_desc_write (int *,int,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2500pci_write_tx_desc(struct queue_entry *entry,
        struct txentry_desc *txdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 __le32 *txd = entry_priv->desc;
 u32 word;




 rt2x00_desc_read(txd, 1, &word);
 rt2x00_set_field32(&word, TXD_W1_BUFFER_ADDRESS, skbdesc->skb_dma);
 rt2x00_desc_write(txd, 1, word);

 rt2x00_desc_read(txd, 2, &word);
 rt2x00_set_field32(&word, TXD_W2_IV_OFFSET, IEEE80211_HEADER);
 rt2x00_set_field32(&word, TXD_W2_AIFS, entry->queue->aifs);
 rt2x00_set_field32(&word, TXD_W2_CWMIN, entry->queue->cw_min);
 rt2x00_set_field32(&word, TXD_W2_CWMAX, entry->queue->cw_max);
 rt2x00_desc_write(txd, 2, word);

 rt2x00_desc_read(txd, 3, &word);
 rt2x00_set_field32(&word, TXD_W3_PLCP_SIGNAL, txdesc->u.plcp.signal);
 rt2x00_set_field32(&word, TXD_W3_PLCP_SERVICE, txdesc->u.plcp.service);
 rt2x00_set_field32(&word, TXD_W3_PLCP_LENGTH_LOW,
      txdesc->u.plcp.length_low);
 rt2x00_set_field32(&word, TXD_W3_PLCP_LENGTH_HIGH,
      txdesc->u.plcp.length_high);
 rt2x00_desc_write(txd, 3, word);

 rt2x00_desc_read(txd, 10, &word);
 rt2x00_set_field32(&word, TXD_W10_RTS,
      test_bit(ENTRY_TXD_RTS_FRAME, &txdesc->flags));
 rt2x00_desc_write(txd, 10, word);






 rt2x00_desc_read(txd, 0, &word);
 rt2x00_set_field32(&word, TXD_W0_OWNER_NIC, 1);
 rt2x00_set_field32(&word, TXD_W0_VALID, 1);
 rt2x00_set_field32(&word, TXD_W0_MORE_FRAG,
      test_bit(ENTRY_TXD_MORE_FRAG, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_ACK,
      test_bit(ENTRY_TXD_ACK, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_TIMESTAMP,
      test_bit(ENTRY_TXD_REQ_TIMESTAMP, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_OFDM,
      (txdesc->rate_mode == RATE_MODE_OFDM));
 rt2x00_set_field32(&word, TXD_W0_CIPHER_OWNER, 1);
 rt2x00_set_field32(&word, TXD_W0_IFS, txdesc->u.plcp.ifs);
 rt2x00_set_field32(&word, TXD_W0_RETRY_MODE,
      test_bit(ENTRY_TXD_RETRY_MODE, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_DATABYTE_COUNT, txdesc->length);
 rt2x00_set_field32(&word, TXD_W0_CIPHER_ALG, CIPHER_NONE);
 rt2x00_desc_write(txd, 0, word);




 skbdesc->desc = txd;
 skbdesc->desc_len = TXD_DESC_SIZE;
}
