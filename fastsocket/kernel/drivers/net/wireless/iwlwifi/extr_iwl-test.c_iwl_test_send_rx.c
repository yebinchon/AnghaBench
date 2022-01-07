
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_test {int trans; } ;
struct iwl_rx_packet {int len_n_flags; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
typedef int __le32 ;


 int FH_RSCSR_FRAME_SIZE_MSK ;
 int IWL_ERR (int ,char*) ;
 int IWL_TM_ATTR_COMMAND ;
 int IWL_TM_ATTR_UCODE_RX_PKT ;
 int IWL_TM_CMD_DEV2APP_UCODE_RX_PKT ;
 struct sk_buff* iwl_test_alloc_event (struct iwl_test*,int) ;
 int iwl_test_event (struct iwl_test*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct iwl_rx_packet*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwl_test_send_rx(struct iwl_test *tst,
        struct iwl_rx_cmd_buffer *rxb)
{
 struct sk_buff *skb;
 struct iwl_rx_packet *data;
 int length;

 data = rxb_addr(rxb);
 length = le32_to_cpu(data->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;


 length += sizeof(__le32);

 skb = iwl_test_alloc_event(tst, length + 20);
 if (skb == ((void*)0)) {
  IWL_ERR(tst->trans, "Out of memory for message to user\n");
  return;
 }

 if (nla_put_u32(skb, IWL_TM_ATTR_COMMAND,
   IWL_TM_CMD_DEV2APP_UCODE_RX_PKT) ||
     nla_put(skb, IWL_TM_ATTR_UCODE_RX_PKT, length, data))
  goto nla_put_failure;

 iwl_test_event(tst, skb);
 return;

nla_put_failure:
 kfree_skb(skb);
 IWL_ERR(tst->trans, "Ouch, overran buffer, check allocation!\n");
}
