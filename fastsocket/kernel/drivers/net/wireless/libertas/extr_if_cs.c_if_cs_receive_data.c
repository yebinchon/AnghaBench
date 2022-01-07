
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int * data; } ;
struct lbs_private {int card; TYPE_2__* dev; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int IF_CS_BIT_RX ;
 int IF_CS_HOST_INT_CAUSE ;
 int IF_CS_HOST_STATUS ;
 int IF_CS_READ ;
 int IF_CS_READ_LEN ;
 int LBS_DEB_CS ;
 int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ;
 struct sk_buff* dev_alloc_skb (int) ;
 int if_cs_read16 (int ,int ) ;
 int if_cs_read16_rep (int ,int ,int *,int) ;
 int if_cs_read8 (int ,int ) ;
 int if_cs_write16 (int ,int ,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,struct sk_buff*) ;
 int lbs_pr_err (char*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *if_cs_receive_data(struct lbs_private *priv)
{
 struct sk_buff *skb = ((void*)0);
 u16 len;
 u8 *data;

 lbs_deb_enter(LBS_DEB_CS);

 len = if_cs_read16(priv->card, IF_CS_READ_LEN);
 if (len == 0 || len > MRVDRV_ETH_RX_PACKET_BUFFER_SIZE) {
  lbs_pr_err("card data buffer has invalid # of bytes (%d)\n", len);
  priv->dev->stats.rx_dropped++;
  goto dat_err;
 }

 skb = dev_alloc_skb(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE + 2);
 if (!skb)
  goto out;
 skb_put(skb, len);
 skb_reserve(skb, 2);
 data = skb->data;


 if_cs_read16_rep(priv->card, IF_CS_READ, data, len/sizeof(u16));
 if (len & 1)
  data[len-1] = if_cs_read8(priv->card, IF_CS_READ);

dat_err:
 if_cs_write16(priv->card, IF_CS_HOST_STATUS, IF_CS_BIT_RX);
 if_cs_write16(priv->card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_RX);

out:
 lbs_deb_leave_args(LBS_DEB_CS, "ret %p", skb);
 return skb;
}
