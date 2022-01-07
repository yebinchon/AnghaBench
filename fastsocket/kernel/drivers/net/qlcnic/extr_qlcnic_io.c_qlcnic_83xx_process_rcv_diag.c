
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int data; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_rds_ring {int num_desc; int skb_size; } ;
struct qlcnic_adapter {int max_rds_rings; TYPE_1__* ahw; int mac_addr; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_2__ {int diag_cnt; } ;


 int STATUS_CKSUM_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dump_skb (struct sk_buff*,struct qlcnic_adapter*) ;
 int qlcnic_83xx_hndl (int ) ;
 int qlcnic_83xx_pktln (int ) ;
 int qlcnic_check_loopback_buff (int ,int ) ;
 struct sk_buff* qlcnic_process_rxbuf (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int ) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

void qlcnic_83xx_process_rcv_diag(struct qlcnic_adapter *adapter,
      int ring, u64 sts_data[])
{
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
 struct sk_buff *skb;
 struct qlcnic_host_rds_ring *rds_ring;
 int index, length;

 if (unlikely(ring >= adapter->max_rds_rings))
  return;

 rds_ring = &recv_ctx->rds_rings[ring];
 index = qlcnic_83xx_hndl(sts_data[0]);
 if (unlikely(index >= rds_ring->num_desc))
  return;

 length = qlcnic_83xx_pktln(sts_data[0]);

 skb = qlcnic_process_rxbuf(adapter, rds_ring, index, STATUS_CKSUM_OK);
 if (!skb)
  return;

 if (length > rds_ring->skb_size)
  skb_put(skb, rds_ring->skb_size);
 else
  skb_put(skb, length);

 if (!qlcnic_check_loopback_buff(skb->data, adapter->mac_addr))
  adapter->ahw->diag_cnt++;
 else
  dump_skb(skb, adapter);

 dev_kfree_skb_any(skb);
 return;
}
