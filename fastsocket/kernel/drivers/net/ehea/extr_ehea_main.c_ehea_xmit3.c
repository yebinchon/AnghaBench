
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int data_len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int * immediate_data; } ;
struct TYPE_4__ {TYPE_1__ immdata_nodesc; } ;
struct ehea_swqe {int immediate_data_length; TYPE_2__ u; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int ,int *,int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,int *,int ) ;
 int xmit_common (struct sk_buff*,struct ehea_swqe*) ;

__attribute__((used)) static void ehea_xmit3(struct sk_buff *skb, struct net_device *dev,
         struct ehea_swqe *swqe)
{
 u8 *imm_data = &swqe->u.immdata_nodesc.immediate_data[0];

 xmit_common(skb, swqe);

 if (!skb->data_len)
  skb_copy_from_linear_data(skb, imm_data, skb->len);
 else
  skb_copy_bits(skb, 0, imm_data, skb->len);

 swqe->immediate_data_length = skb->len;
 dev_kfree_skb(skb);
}
