
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct skb_frame_desc {int desc_len; int desc; } ;
struct rxdone_entry_desc {int cipher_status; int dev_flags; int flags; } ;
struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; } ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int data_size; int rt2x00dev; } ;


 int RXDONE_L2PAD ;
 int RXDONE_MY_BSS ;
 int RXD_W0_CIPHER_ERROR ;
 int RXD_W0_CRC_ERROR ;
 int RXD_W0_DECRYPTED ;
 int RXD_W0_L2PAD ;
 int RXD_W0_MY_BSS ;
 int RXINFO_DESC_SIZE ;
 int RXINFO_W0_USB_DMA_RX_PKT_LEN ;
 int RX_CRYPTO_FAIL_MIC ;
 int RX_CRYPTO_SUCCESS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_2__*) ;
 int memcpy (int ,int *,int ) ;
 int rt2800_process_rxwi (struct queue_entry*,struct rxdone_entry_desc*) ;
 int rt2x00_desc_read (int *,int ,int *) ;
 int rt2x00_err (int ,char*,int) ;
 int rt2x00_get_field32 (int ,int ) ;
 int skb_pull (TYPE_2__*,int ) ;
 int skb_trim (TYPE_2__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rt2800usb_fill_rxdone(struct queue_entry *entry,
      struct rxdone_entry_desc *rxdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 __le32 *rxi = (__le32 *)entry->skb->data;
 __le32 *rxd;
 u32 word;
 int rx_pkt_len;





 memcpy(skbdesc->desc, rxi, skbdesc->desc_len);






 rt2x00_desc_read(rxi, 0, &word);
 rx_pkt_len = rt2x00_get_field32(word, RXINFO_W0_USB_DMA_RX_PKT_LEN);




 skb_pull(entry->skb, RXINFO_DESC_SIZE);





 if (unlikely(rx_pkt_len == 0 ||
   rx_pkt_len > entry->queue->data_size)) {
  rt2x00_err(entry->queue->rt2x00dev,
      "Bad frame size %d, forcing to 0\n", rx_pkt_len);
  return;
 }

 rxd = (__le32 *)(entry->skb->data + rx_pkt_len);




 rt2x00_desc_read(rxd, 0, &word);

 if (rt2x00_get_field32(word, RXD_W0_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;

 rxdesc->cipher_status = rt2x00_get_field32(word, RXD_W0_CIPHER_ERROR);

 if (rt2x00_get_field32(word, RXD_W0_DECRYPTED)) {






  rxdesc->flags |= RX_FLAG_IV_STRIPPED;





  rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;

  if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
   rxdesc->flags |= RX_FLAG_DECRYPTED;
  else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
   rxdesc->flags |= RX_FLAG_MMIC_ERROR;
 }

 if (rt2x00_get_field32(word, RXD_W0_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;

 if (rt2x00_get_field32(word, RXD_W0_L2PAD))
  rxdesc->dev_flags |= RXDONE_L2PAD;




 skb_trim(entry->skb, rx_pkt_len);




 rt2800_process_rxwi(entry, rxdesc);
}
