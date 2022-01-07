
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct cpl_tx_pkt {int dummy; } ;


 int MAX_IMM_TX_PKT_LEN ;

__attribute__((used)) static inline int is_eth_imm(const struct sk_buff *skb)
{
 return skb->len <= MAX_IMM_TX_PKT_LEN - sizeof(struct cpl_tx_pkt);
}
