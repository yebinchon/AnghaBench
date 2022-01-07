
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxdone_entry_desc {scalar_t__ cipher_status; int dev_flags; int flags; } ;
struct queue_entry_priv_mmio {int * desc; } ;
struct queue_entry {struct queue_entry_priv_mmio* priv_data; } ;
typedef int __le32 ;


 int RXDONE_L2PAD ;
 int RXDONE_MY_BSS ;
 int RXD_W3_CIPHER_ERROR ;
 int RXD_W3_CRC_ERROR ;
 int RXD_W3_DECRYPTED ;
 int RXD_W3_L2PAD ;
 int RXD_W3_MY_BSS ;
 scalar_t__ RX_CRYPTO_FAIL_MIC ;
 scalar_t__ RX_CRYPTO_SUCCESS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int rt2800_process_rxwi (struct queue_entry*,struct rxdone_entry_desc*) ;
 int rt2x00_desc_read (int *,int,int *) ;
 scalar_t__ rt2x00_get_field32 (int ,int ) ;

__attribute__((used)) static void rt2800pci_fill_rxdone(struct queue_entry *entry,
      struct rxdone_entry_desc *rxdesc)
{
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 __le32 *rxd = entry_priv->desc;
 u32 word;

 rt2x00_desc_read(rxd, 3, &word);

 if (rt2x00_get_field32(word, RXD_W3_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;






 rxdesc->cipher_status = rt2x00_get_field32(word, RXD_W3_CIPHER_ERROR);

 if (rt2x00_get_field32(word, RXD_W3_DECRYPTED)) {






  rxdesc->flags |= RX_FLAG_IV_STRIPPED;





  rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;

  if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
   rxdesc->flags |= RX_FLAG_DECRYPTED;
  else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
   rxdesc->flags |= RX_FLAG_MMIC_ERROR;
 }

 if (rt2x00_get_field32(word, RXD_W3_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;

 if (rt2x00_get_field32(word, RXD_W3_L2PAD))
  rxdesc->dev_flags |= RXDONE_L2PAD;




 rt2800_process_rxwi(entry, rxdesc);
}
