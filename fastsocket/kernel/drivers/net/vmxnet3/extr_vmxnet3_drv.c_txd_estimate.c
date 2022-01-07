
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_frag_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nr_frags; struct skb_frag_struct* frags; } ;


 int VMXNET3_TXD_NEEDED (int ) ;
 int skb_frag_size (struct skb_frag_struct const*) ;
 int skb_headlen (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static int txd_estimate(const struct sk_buff *skb)
{
 int count = VMXNET3_TXD_NEEDED(skb_headlen(skb)) + 1;
 int i;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const struct skb_frag_struct *frag = &skb_shinfo(skb)->frags[i];

  count += VMXNET3_TXD_NEEDED(skb_frag_size(frag));
 }
 return count;
}
