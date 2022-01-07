
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {scalar_t__ out_idx; scalar_t__ sk_count; int * skbs; } ;


 scalar_t__ MAX_SKB_BUFFERS ;
 int dev_kfree_skb (int ) ;

__attribute__((used)) static void
flush_tx_buffers(struct net_local *nl)
{

 while (nl->sk_count) {
  dev_kfree_skb(nl->skbs[nl->out_idx++]);
  if (nl->out_idx >= MAX_SKB_BUFFERS)
   nl->out_idx = 0;
  nl->sk_count--;
 }
}
