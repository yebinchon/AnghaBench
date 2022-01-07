
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mpdu_density; int txop; int mcs; int stbc; int ba_size; int wcid; } ;
struct TYPE_5__ {TYPE_1__ ht; } ;
struct txentry_desc {int rate_mode; int key_idx; int length; TYPE_2__ u; int flags; } ;
struct queue_entry {int entry_idx; TYPE_3__* queue; } ;
typedef int __le32 ;
struct TYPE_6__ {int qid; int winfo_size; } ;


 int ENTRY_TXD_ACK ;
 int ENTRY_TXD_ENCRYPT ;
 int ENTRY_TXD_GENERATE_SEQ ;
 int ENTRY_TXD_HT_AMPDU ;
 int ENTRY_TXD_HT_BW_40 ;
 int ENTRY_TXD_HT_MIMO_PS ;
 int ENTRY_TXD_HT_SHORT_GI ;
 int ENTRY_TXD_MORE_FRAG ;
 int ENTRY_TXD_REQ_TIMESTAMP ;
 int TXWI_W0_AMPDU ;
 int TXWI_W0_BW ;
 int TXWI_W0_CF_ACK ;
 int TXWI_W0_FRAG ;
 int TXWI_W0_MCS ;
 int TXWI_W0_MIMO_PS ;
 int TXWI_W0_MPDU_DENSITY ;
 int TXWI_W0_PHYMODE ;
 int TXWI_W0_SHORT_GI ;
 int TXWI_W0_STBC ;
 int TXWI_W0_TS ;
 int TXWI_W0_TX_OP ;
 int TXWI_W1_ACK ;
 int TXWI_W1_BW_WIN_SIZE ;
 int TXWI_W1_MPDU_TOTAL_BYTE_COUNT ;
 int TXWI_W1_NSEQ ;
 int TXWI_W1_PACKETID_ENTRY ;
 int TXWI_W1_PACKETID_QUEUE ;
 int TXWI_W1_WIRELESS_CLI_ID ;
 int _rt2x00_desc_write (int *,int,int ) ;
 int * rt2800_drv_get_txwi (struct queue_entry*) ;
 int rt2x00_desc_read (int *,int,int *) ;
 int rt2x00_desc_write (int *,int,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int test_bit (int ,int *) ;

void rt2800_write_tx_data(struct queue_entry *entry,
     struct txentry_desc *txdesc)
{
 __le32 *txwi = rt2800_drv_get_txwi(entry);
 u32 word;
 int i;




 rt2x00_desc_read(txwi, 0, &word);
 rt2x00_set_field32(&word, TXWI_W0_FRAG,
      test_bit(ENTRY_TXD_MORE_FRAG, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W0_MIMO_PS,
      test_bit(ENTRY_TXD_HT_MIMO_PS, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W0_CF_ACK, 0);
 rt2x00_set_field32(&word, TXWI_W0_TS,
      test_bit(ENTRY_TXD_REQ_TIMESTAMP, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W0_AMPDU,
      test_bit(ENTRY_TXD_HT_AMPDU, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W0_MPDU_DENSITY,
      txdesc->u.ht.mpdu_density);
 rt2x00_set_field32(&word, TXWI_W0_TX_OP, txdesc->u.ht.txop);
 rt2x00_set_field32(&word, TXWI_W0_MCS, txdesc->u.ht.mcs);
 rt2x00_set_field32(&word, TXWI_W0_BW,
      test_bit(ENTRY_TXD_HT_BW_40, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W0_SHORT_GI,
      test_bit(ENTRY_TXD_HT_SHORT_GI, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W0_STBC, txdesc->u.ht.stbc);
 rt2x00_set_field32(&word, TXWI_W0_PHYMODE, txdesc->rate_mode);
 rt2x00_desc_write(txwi, 0, word);

 rt2x00_desc_read(txwi, 1, &word);
 rt2x00_set_field32(&word, TXWI_W1_ACK,
      test_bit(ENTRY_TXD_ACK, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W1_NSEQ,
      test_bit(ENTRY_TXD_GENERATE_SEQ, &txdesc->flags));
 rt2x00_set_field32(&word, TXWI_W1_BW_WIN_SIZE, txdesc->u.ht.ba_size);
 rt2x00_set_field32(&word, TXWI_W1_WIRELESS_CLI_ID,
      test_bit(ENTRY_TXD_ENCRYPT, &txdesc->flags) ?
      txdesc->key_idx : txdesc->u.ht.wcid);
 rt2x00_set_field32(&word, TXWI_W1_MPDU_TOTAL_BYTE_COUNT,
      txdesc->length);
 rt2x00_set_field32(&word, TXWI_W1_PACKETID_QUEUE, entry->queue->qid);
 rt2x00_set_field32(&word, TXWI_W1_PACKETID_ENTRY, (entry->entry_idx % 3) + 1);
 rt2x00_desc_write(txwi, 1, word);
 for (i = 2; i < entry->queue->winfo_size / sizeof(__le32); i++)
  _rt2x00_desc_write(txwi, i, 0);
}
