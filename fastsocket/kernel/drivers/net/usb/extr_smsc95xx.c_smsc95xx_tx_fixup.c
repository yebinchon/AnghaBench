
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {scalar_t__ use_tx_csum; } ;
struct sk_buff {scalar_t__ ip_summed; int len; int data; } ;
typedef int gfp_t ;
struct TYPE_2__ {int nr_frags; } ;


 int BUG_ON (int ) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int SMSC95XX_TX_OVERHEAD ;
 int SMSC95XX_TX_OVERHEAD_CSUM ;
 int TX_CMD_A_FIRST_SEG_ ;
 int TX_CMD_A_LAST_SEG_ ;
 int TX_CMD_B_CSUM_ENABLE ;
 int cpu_to_le32s (int*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int ,int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int smsc95xx_calc_csum_preamble (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *smsc95xx_tx_fixup(struct usbnet *dev,
      struct sk_buff *skb, gfp_t flags)
{
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 bool csum = pdata->use_tx_csum && (skb->ip_summed == CHECKSUM_PARTIAL);
 int overhead = csum ? SMSC95XX_TX_OVERHEAD_CSUM : SMSC95XX_TX_OVERHEAD;
 u32 tx_cmd_a, tx_cmd_b;


 BUG_ON(skb_shinfo(skb)->nr_frags);

 if (skb_headroom(skb) < overhead) {
  struct sk_buff *skb2 = skb_copy_expand(skb,
   overhead, 0, flags);
  dev_kfree_skb_any(skb);
  skb = skb2;
  if (!skb)
   return ((void*)0);
 }

 if (csum) {
  u32 csum_preamble = smsc95xx_calc_csum_preamble(skb);
  skb_push(skb, 4);
  memcpy(skb->data, &csum_preamble, 4);
 }

 skb_push(skb, 4);
 tx_cmd_b = (u32)(skb->len - 4);
 if (csum)
  tx_cmd_b |= TX_CMD_B_CSUM_ENABLE;
 cpu_to_le32s(&tx_cmd_b);
 memcpy(skb->data, &tx_cmd_b, 4);

 skb_push(skb, 4);
 tx_cmd_a = (u32)(skb->len - 8) | TX_CMD_A_FIRST_SEG_ |
  TX_CMD_A_LAST_SEG_;
 cpu_to_le32s(&tx_cmd_a);
 memcpy(skb->data, &tx_cmd_a, 4);

 return skb;
}
