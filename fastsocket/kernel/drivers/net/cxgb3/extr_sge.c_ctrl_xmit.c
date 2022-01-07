
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_request_hdr {int wr_lo; int wr_hi; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct sge_txq {size_t pidx; int gen; size_t size; int cntxt_id; int lock; int in_use; int * desc; int token; } ;
struct adapter {int dummy; } ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 int F_WR_EOP ;
 int F_WR_SOP ;
 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 int TXQ_CTRL ;
 int V_EGRCNTX (int ) ;
 int V_WR_TID (int ) ;
 int WARN_ON (int) ;
 int check_desc_avail (struct adapter*,struct sge_txq*,struct sk_buff*,int,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int htonl (int) ;
 int immediate (struct sk_buff*) ;
 int reclaim_completed_tx_imm (struct sge_txq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int write_imm (int *,struct sk_buff*,int ,int) ;

__attribute__((used)) static int ctrl_xmit(struct adapter *adap, struct sge_txq *q,
       struct sk_buff *skb)
{
 int ret;
 struct work_request_hdr *wrp = (struct work_request_hdr *)skb->data;

 if (unlikely(!immediate(skb))) {
  WARN_ON(1);
  dev_kfree_skb(skb);
  return NET_XMIT_SUCCESS;
 }

 wrp->wr_hi |= htonl(F_WR_SOP | F_WR_EOP);
 wrp->wr_lo = htonl(V_WR_TID(q->token));

 spin_lock(&q->lock);
      again:reclaim_completed_tx_imm(q);

 ret = check_desc_avail(adap, q, skb, 1, TXQ_CTRL);
 if (unlikely(ret)) {
  if (ret == 1) {
   spin_unlock(&q->lock);
   return NET_XMIT_CN;
  }
  goto again;
 }

 write_imm(&q->desc[q->pidx], skb, skb->len, q->gen);

 q->in_use++;
 if (++q->pidx >= q->size) {
  q->pidx = 0;
  q->gen ^= 1;
 }
 spin_unlock(&q->lock);
 wmb();
 t3_write_reg(adap, A_SG_KDOORBELL,
       F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
 return NET_XMIT_SUCCESS;
}
