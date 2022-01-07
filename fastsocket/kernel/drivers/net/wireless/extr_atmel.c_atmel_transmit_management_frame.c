
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ieee80211_hdr {int* addr1; } ;
struct atmel_private {int tx_buff_tail; int dev; } ;


 int MGMT_FRAME_BODY_OFFSET ;
 int TX_PACKET_TYPE_MGMT ;
 int atmel_copy_to_card (int ,scalar_t__,int *,int) ;
 scalar_t__ find_tx_buff (struct atmel_private*,int) ;
 int tx_update_descriptor (struct atmel_private*,int,int,scalar_t__,int ) ;

__attribute__((used)) static void atmel_transmit_management_frame(struct atmel_private *priv,
         struct ieee80211_hdr *header,
         u8 *body, int body_len)
{
 u16 buff;
 int len = MGMT_FRAME_BODY_OFFSET + body_len;

 if (!(buff = find_tx_buff(priv, len)))
  return;

 atmel_copy_to_card(priv->dev, buff, (u8 *)header, MGMT_FRAME_BODY_OFFSET);
 atmel_copy_to_card(priv->dev, buff + MGMT_FRAME_BODY_OFFSET, body, body_len);
 priv->tx_buff_tail += len;
 tx_update_descriptor(priv, header->addr1[0] & 0x01, len, buff, TX_PACKET_TYPE_MGMT);
}
