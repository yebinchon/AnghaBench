
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct cpl_tx_pkt {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;


 int WR_LEN ;
 unsigned int flits_to_desc (unsigned int) ;
 int sgl_len (scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int calc_tx_descs(const struct sk_buff *skb)
{
 unsigned int flits;

 if (skb->len <= WR_LEN - sizeof(struct cpl_tx_pkt))
  return 1;

 flits = sgl_len(skb_shinfo(skb)->nr_frags + 1) + 2;
 if (skb_shinfo(skb)->gso_size)
  flits++;
 return flits_to_desc(flits);
}
