
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int ack_seq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ loc_seq_num; } ;
struct nes_cm_node {TYPE_1__ tcp_cntxt; } ;


 int active_open_err (struct nes_cm_node*,struct sk_buff*,int) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int check_syn(struct nes_cm_node *cm_node, struct tcphdr *tcph,
       struct sk_buff *skb)
{
 int err;

 err = ((ntohl(tcph->ack_seq) == cm_node->tcp_cntxt.loc_seq_num)) ? 0 : 1;
 if (err)
  active_open_err(cm_node, skb, 1);

 return err;
}
