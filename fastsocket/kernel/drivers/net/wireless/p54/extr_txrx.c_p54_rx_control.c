
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct p54_hdr {int type; } ;
struct p54_common {TYPE_1__* hw; } ;
struct TYPE_2__ {int wiphy; } ;







 int le16_to_cpu (int ) ;
 int p54_rx_eeprom_readback (struct p54_common*,struct sk_buff*) ;
 int p54_rx_frame_sent (struct p54_common*,struct sk_buff*) ;
 int p54_rx_stats (struct p54_common*,struct sk_buff*) ;
 int p54_rx_trap (struct p54_common*,struct sk_buff*) ;
 int wiphy_debug (int ,char*,int) ;

__attribute__((used)) static int p54_rx_control(struct p54_common *priv, struct sk_buff *skb)
{
 struct p54_hdr *hdr = (struct p54_hdr *) skb->data;

 switch (le16_to_cpu(hdr->type)) {
 case 128:
  p54_rx_frame_sent(priv, skb);
  break;
 case 129:
  p54_rx_trap(priv, skb);
  break;
 case 132:
  break;
 case 130:
  p54_rx_stats(priv, skb);
  break;
 case 131:
  p54_rx_eeprom_readback(priv, skb);
  break;
 default:
  wiphy_debug(priv->hw->wiphy,
       "not handling 0x%02x type control frame\n",
       le16_to_cpu(hdr->type));
  break;
 }
 return 0;
}
