
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rsp_desc {int imm_data; } ;


 int GFP_ATOMIC ;
 int IMMED_PKT_SIZE ;
 int __skb_put (struct sk_buff*,int ) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline struct sk_buff *get_imm_packet(const struct rsp_desc *resp)
{
 struct sk_buff *skb = alloc_skb(IMMED_PKT_SIZE, GFP_ATOMIC);

 if (skb) {
  __skb_put(skb, IMMED_PKT_SIZE);
  skb_copy_to_linear_data(skb, resp->imm_data, IMMED_PKT_SIZE);
 }
 return skb;
}
