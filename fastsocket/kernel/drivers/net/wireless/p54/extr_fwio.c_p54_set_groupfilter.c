
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_group_address_table {int mac_list; void* num_address; void* filter_enable; } ;
struct p54_common {int filter_flags; int mc_maclist_num; int mc_maclist; } ;


 int ENOMEM ;
 int FIF_ALLMULTI ;
 int GFP_KERNEL ;
 int MC_FILTER_ADDRESS_NUM ;
 int P54_CONTROL_TYPE_GROUP_ADDRESS_TABLE ;
 int P54_HDR_FLAG_CONTROL_OPSET ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 struct sk_buff* p54_alloc_skb (struct p54_common*,int ,int,int ,int ) ;
 int p54_tx (struct p54_common*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

int p54_set_groupfilter(struct p54_common *priv)
{
 struct p54_group_address_table *grp;
 struct sk_buff *skb;
 bool on = 0;

 skb = p54_alloc_skb(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*grp),
       P54_CONTROL_TYPE_GROUP_ADDRESS_TABLE, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 grp = (struct p54_group_address_table *)skb_put(skb, sizeof(*grp));

 on = !(priv->filter_flags & FIF_ALLMULTI) &&
      (priv->mc_maclist_num > 0 &&
       priv->mc_maclist_num <= MC_FILTER_ADDRESS_NUM);

 if (on) {
  grp->filter_enable = cpu_to_le16(1);
  grp->num_address = cpu_to_le16(priv->mc_maclist_num);
  memcpy(grp->mac_list, priv->mc_maclist, sizeof(grp->mac_list));
 } else {
  grp->filter_enable = cpu_to_le16(0);
  grp->num_address = cpu_to_le16(0);
  memset(grp->mac_list, 0, sizeof(grp->mac_list));
 }

 p54_tx(priv, skb);
 return 0;
}
