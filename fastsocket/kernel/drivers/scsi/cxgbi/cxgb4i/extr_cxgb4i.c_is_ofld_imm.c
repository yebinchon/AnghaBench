
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct fw_ofld_tx_data_wr {int dummy; } ;


 int MAX_IMM_TX_PKT_LEN ;

__attribute__((used)) static inline int is_ofld_imm(const struct sk_buff *skb)
{
 return skb->len <= (MAX_IMM_TX_PKT_LEN -
   sizeof(struct fw_ofld_tx_data_wr));
}
