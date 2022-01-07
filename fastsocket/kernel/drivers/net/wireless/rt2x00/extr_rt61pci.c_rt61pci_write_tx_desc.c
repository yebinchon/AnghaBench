
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int signal; int service; int length_low; int length_high; int ifs; } ;
struct TYPE_9__ {TYPE_3__ plcp; } ;
struct txentry_desc {int iv_offset; int length; scalar_t__ rate_mode; int key_idx; int cipher; int flags; TYPE_4__ u; } ;
struct skb_frame_desc {int skb_dma; int desc_len; int * desc; TYPE_1__* entry; int * iv; } ;
struct queue_entry_priv_mmio {int * desc; } ;
struct queue_entry {TYPE_5__* queue; struct queue_entry_priv_mmio* priv_data; int skb; } ;
typedef int __le32 ;
struct TYPE_10__ {int qid; int aifs; int cw_min; int cw_max; TYPE_2__* rt2x00dev; } ;
struct TYPE_7__ {int tx_power; } ;
struct TYPE_6__ {int entry_idx; } ;


 int ENTRY_TXD_ACK ;
 int ENTRY_TXD_BURST ;
 int ENTRY_TXD_ENCRYPT ;
 int ENTRY_TXD_ENCRYPT_MMIC ;
 int ENTRY_TXD_ENCRYPT_PAIRWISE ;
 int ENTRY_TXD_GENERATE_SEQ ;
 int ENTRY_TXD_MORE_FRAG ;
 int ENTRY_TXD_REQ_TIMESTAMP ;
 int ENTRY_TXD_RETRY_MODE ;
 int QID_BEACON ;
 scalar_t__ RATE_MODE_OFDM ;
 int TXD_DESC_SIZE ;
 int TXD_W0_ACK ;
 int TXD_W0_BURST ;
 int TXD_W0_CIPHER_ALG ;
 int TXD_W0_DATABYTE_COUNT ;
 int TXD_W0_IFS ;
 int TXD_W0_KEY_INDEX ;
 int TXD_W0_KEY_TABLE ;
 int TXD_W0_MORE_FRAG ;
 int TXD_W0_OFDM ;
 int TXD_W0_OWNER_NIC ;
 int TXD_W0_RETRY_MODE ;
 int TXD_W0_TIMESTAMP ;
 int TXD_W0_TKIP_MIC ;
 int TXD_W0_VALID ;
 int TXD_W11_BUFFER_LENGTH0 ;
 int TXD_W1_AIFSN ;
 int TXD_W1_BUFFER_COUNT ;
 int TXD_W1_CWMAX ;
 int TXD_W1_CWMIN ;
 int TXD_W1_HOST_Q_ID ;
 int TXD_W1_HW_SEQUENCE ;
 int TXD_W1_IV_OFFSET ;
 int TXD_W2_PLCP_LENGTH_HIGH ;
 int TXD_W2_PLCP_LENGTH_LOW ;
 int TXD_W2_PLCP_SERVICE ;
 int TXD_W2_PLCP_SIGNAL ;
 int TXD_W5_PID_SUBTYPE ;
 int TXD_W5_PID_TYPE ;
 int TXD_W5_TX_POWER ;
 int TXD_W5_WAITING_DMA_DONE_INT ;
 int TXD_W6_BUFFER_PHYSICAL_ADDRESS ;
 int TXINFO_SIZE ;
 int TXPOWER_TO_DEV (int ) ;
 int _rt2x00_desc_write (int *,int,int ) ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int rt2x00_desc_read (int *,int,int *) ;
 int rt2x00_desc_write (int *,int,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt61pci_write_tx_desc(struct queue_entry *entry,
      struct txentry_desc *txdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 __le32 *txd = entry_priv->desc;
 u32 word;




 rt2x00_desc_read(txd, 1, &word);
 rt2x00_set_field32(&word, TXD_W1_HOST_Q_ID, entry->queue->qid);
 rt2x00_set_field32(&word, TXD_W1_AIFSN, entry->queue->aifs);
 rt2x00_set_field32(&word, TXD_W1_CWMIN, entry->queue->cw_min);
 rt2x00_set_field32(&word, TXD_W1_CWMAX, entry->queue->cw_max);
 rt2x00_set_field32(&word, TXD_W1_IV_OFFSET, txdesc->iv_offset);
 rt2x00_set_field32(&word, TXD_W1_HW_SEQUENCE,
      test_bit(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W1_BUFFER_COUNT, 1);
 rt2x00_desc_write(txd, 1, word);

 rt2x00_desc_read(txd, 2, &word);
 rt2x00_set_field32(&word, TXD_W2_PLCP_SIGNAL, txdesc->u.plcp.signal);
 rt2x00_set_field32(&word, TXD_W2_PLCP_SERVICE, txdesc->u.plcp.service);
 rt2x00_set_field32(&word, TXD_W2_PLCP_LENGTH_LOW,
      txdesc->u.plcp.length_low);
 rt2x00_set_field32(&word, TXD_W2_PLCP_LENGTH_HIGH,
      txdesc->u.plcp.length_high);
 rt2x00_desc_write(txd, 2, word);

 if (test_bit(ENTRY_TXD_ENCRYPT, &txdesc->flags)) {
  _rt2x00_desc_write(txd, 3, skbdesc->iv[0]);
  _rt2x00_desc_write(txd, 4, skbdesc->iv[1]);
 }

 rt2x00_desc_read(txd, 5, &word);
 rt2x00_set_field32(&word, TXD_W5_PID_TYPE, entry->queue->qid);
 rt2x00_set_field32(&word, TXD_W5_PID_SUBTYPE,
      skbdesc->entry->entry_idx);
 rt2x00_set_field32(&word, TXD_W5_TX_POWER,
      TXPOWER_TO_DEV(entry->queue->rt2x00dev->tx_power));
 rt2x00_set_field32(&word, TXD_W5_WAITING_DMA_DONE_INT, 1);
 rt2x00_desc_write(txd, 5, word);

 if (entry->queue->qid != QID_BEACON) {
  rt2x00_desc_read(txd, 6, &word);
  rt2x00_set_field32(&word, TXD_W6_BUFFER_PHYSICAL_ADDRESS,
       skbdesc->skb_dma);
  rt2x00_desc_write(txd, 6, word);

  rt2x00_desc_read(txd, 11, &word);
  rt2x00_set_field32(&word, TXD_W11_BUFFER_LENGTH0,
       txdesc->length);
  rt2x00_desc_write(txd, 11, word);
 }






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
 rt2x00_set_field32(&word, TXD_W0_IFS, txdesc->u.plcp.ifs);
 rt2x00_set_field32(&word, TXD_W0_RETRY_MODE,
      test_bit(ENTRY_TXD_RETRY_MODE, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_TKIP_MIC,
      test_bit(ENTRY_TXD_ENCRYPT_MMIC, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_KEY_TABLE,
      test_bit(ENTRY_TXD_ENCRYPT_PAIRWISE, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_KEY_INDEX, txdesc->key_idx);
 rt2x00_set_field32(&word, TXD_W0_DATABYTE_COUNT, txdesc->length);
 rt2x00_set_field32(&word, TXD_W0_BURST,
      test_bit(ENTRY_TXD_BURST, &txdesc->flags));
 rt2x00_set_field32(&word, TXD_W0_CIPHER_ALG, txdesc->cipher);
 rt2x00_desc_write(txd, 0, word);




 skbdesc->desc = txd;
 skbdesc->desc_len = (entry->queue->qid == QID_BEACON) ? TXINFO_SIZE :
       TXD_DESC_SIZE;
}
