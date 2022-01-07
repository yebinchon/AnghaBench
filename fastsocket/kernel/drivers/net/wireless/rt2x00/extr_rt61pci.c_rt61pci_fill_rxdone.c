
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rxdone_entry_desc {scalar_t__ cipher; scalar_t__ cipher_status; int dev_flags; void* size; int rssi; void* signal; int flags; int icv; int * iv; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {struct queue_entry_priv_mmio* priv_data; TYPE_1__* queue; } ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;


 scalar_t__ CIPHER_NONE ;
 int RXDONE_CRYPTO_ICV ;
 int RXDONE_CRYPTO_IV ;
 int RXDONE_MY_BSS ;
 int RXDONE_SIGNAL_BITRATE ;
 int RXDONE_SIGNAL_PLCP ;
 int RXD_W0_CIPHER_ALG ;
 int RXD_W0_CIPHER_ERROR ;
 int RXD_W0_CRC_ERROR ;
 int RXD_W0_DATABYTE_COUNT ;
 int RXD_W0_MY_BSS ;
 int RXD_W0_OFDM ;
 int RXD_W1_SIGNAL ;
 scalar_t__ RX_CRYPTO_FAIL_MIC ;
 scalar_t__ RX_CRYPTO_SUCCESS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int _rt2x00_desc_read (int ,int,int *) ;
 int rt2x00_desc_read (int ,int,int *) ;
 void* rt2x00_get_field32 (int ,int ) ;
 int rt61pci_agc_to_rssi (struct rt2x00_dev*,int ) ;

__attribute__((used)) static void rt61pci_fill_rxdone(struct queue_entry *entry,
    struct rxdone_entry_desc *rxdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 u32 word0;
 u32 word1;

 rt2x00_desc_read(entry_priv->desc, 0, &word0);
 rt2x00_desc_read(entry_priv->desc, 1, &word1);

 if (rt2x00_get_field32(word0, RXD_W0_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;

 rxdesc->cipher = rt2x00_get_field32(word0, RXD_W0_CIPHER_ALG);
 rxdesc->cipher_status = rt2x00_get_field32(word0, RXD_W0_CIPHER_ERROR);

 if (rxdesc->cipher != CIPHER_NONE) {
  _rt2x00_desc_read(entry_priv->desc, 2, &rxdesc->iv[0]);
  _rt2x00_desc_read(entry_priv->desc, 3, &rxdesc->iv[1]);
  rxdesc->dev_flags |= RXDONE_CRYPTO_IV;

  _rt2x00_desc_read(entry_priv->desc, 4, &rxdesc->icv);
  rxdesc->dev_flags |= RXDONE_CRYPTO_ICV;






  rxdesc->flags |= RX_FLAG_IV_STRIPPED;





  rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;

  if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
   rxdesc->flags |= RX_FLAG_DECRYPTED;
  else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
   rxdesc->flags |= RX_FLAG_MMIC_ERROR;
 }







 rxdesc->signal = rt2x00_get_field32(word1, RXD_W1_SIGNAL);
 rxdesc->rssi = rt61pci_agc_to_rssi(rt2x00dev, word1);
 rxdesc->size = rt2x00_get_field32(word0, RXD_W0_DATABYTE_COUNT);

 if (rt2x00_get_field32(word0, RXD_W0_OFDM))
  rxdesc->dev_flags |= RXDONE_SIGNAL_PLCP;
 else
  rxdesc->dev_flags |= RXDONE_SIGNAL_BITRATE;
 if (rt2x00_get_field32(word0, RXD_W0_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;
}
