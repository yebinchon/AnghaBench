
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int * function; } ;
struct cxgbi_sock {unsigned int atid; scalar_t__ state; unsigned int tid; int advmss; int lock; int write_queue; int rcv_wup; int rcv_nxt; int copied_seq; TYPE_1__ retry_timer; int flags; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {int* mtus; struct tid_info* tids; } ;
struct cpl_act_establish {int tcp_opt; int snd_isn; int rcv_isn; int tos_atid; } ;


 int CTPF_ACTIVE_CLOSE_NEEDED ;
 int CTPF_HAS_TID ;
 scalar_t__ CTP_ACTIVE_OPEN ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 size_t GET_TCPOPT_MSS (unsigned short) ;
 scalar_t__ GET_TCPOPT_TSTAMP (unsigned short) ;
 unsigned int GET_TID (struct cpl_act_establish*) ;
 unsigned int GET_TID_TID (int ) ;
 int RCV_BUFSIZ_MASK ;
 int __kfree_skb (struct sk_buff*) ;
 int be32_to_cpu (int ) ;
 int cxgb4_insert_tid (struct tid_info*,struct cxgbi_sock*,unsigned int) ;
 int cxgb4i_rcv_win ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int cxgbi_conn_tx_open (struct cxgbi_sock*) ;
 int cxgbi_sock_established (struct cxgbi_sock*,int ,unsigned short) ;
 int cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int del_timer (TYPE_1__*) ;
 int free_atid (struct cxgbi_sock*) ;
 int log_debug (int,char*,struct cxgbi_sock*,size_t,int,...) ;
 struct cxgbi_sock* lookup_atid (struct tid_info*,unsigned int) ;
 int ntohl (int ) ;
 unsigned short ntohs (int ) ;
 int pr_err (char*,unsigned int,struct cxgbi_sock*,...) ;
 int pr_info (char*,struct cxgbi_sock*,scalar_t__,int ,unsigned int) ;
 int push_tx_frames (struct cxgbi_sock*,int ) ;
 int send_abort_req (struct cxgbi_sock*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_act_establish(struct cxgbi_device *cdev, struct sk_buff *skb)
{
 struct cxgbi_sock *csk;
 struct cpl_act_establish *req = (struct cpl_act_establish *)skb->data;
 unsigned short tcp_opt = ntohs(req->tcp_opt);
 unsigned int tid = GET_TID(req);
 unsigned int atid = GET_TID_TID(ntohl(req->tos_atid));
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct tid_info *t = lldi->tids;
 u32 rcv_isn = be32_to_cpu(req->rcv_isn);

 csk = lookup_atid(t, atid);
 if (unlikely(!csk)) {
  pr_err("NO conn. for atid %u, cdev 0x%p.\n", atid, cdev);
  goto rel_skb;
 }

 if (csk->atid != atid) {
  pr_err("bad conn atid %u, csk 0x%p,%u,0x%lx,tid %u, atid %u.\n",
   atid, csk, csk->state, csk->flags, csk->tid, csk->atid);
  goto rel_skb;
 }

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx, tid %u, atid %u, rseq %u.\n",
  csk, csk->state, csk->flags, tid, atid, rcv_isn);

 cxgbi_sock_get(csk);
 csk->tid = tid;
 cxgb4_insert_tid(lldi->tids, csk, tid);
 cxgbi_sock_set_flag(csk, CTPF_HAS_TID);

 free_atid(csk);

 spin_lock_bh(&csk->lock);
 if (unlikely(csk->state != CTP_ACTIVE_OPEN))
  pr_info("csk 0x%p,%u,0x%lx,%u, got EST.\n",
   csk, csk->state, csk->flags, csk->tid);

 if (csk->retry_timer.function) {
  del_timer(&csk->retry_timer);
  csk->retry_timer.function = ((void*)0);
 }

 csk->copied_seq = csk->rcv_wup = csk->rcv_nxt = rcv_isn;




 if (cxgb4i_rcv_win > (RCV_BUFSIZ_MASK << 10))
  csk->rcv_wup -= cxgb4i_rcv_win - (RCV_BUFSIZ_MASK << 10);

 csk->advmss = lldi->mtus[GET_TCPOPT_MSS(tcp_opt)] - 40;
 if (GET_TCPOPT_TSTAMP(tcp_opt))
  csk->advmss -= 12;
 if (csk->advmss < 128)
  csk->advmss = 128;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p, mss_idx %u, advmss %u.\n",
   csk, GET_TCPOPT_MSS(tcp_opt), csk->advmss);

 cxgbi_sock_established(csk, ntohl(req->snd_isn), ntohs(req->tcp_opt));

 if (unlikely(cxgbi_sock_flag(csk, CTPF_ACTIVE_CLOSE_NEEDED)))
  send_abort_req(csk);
 else {
  if (skb_queue_len(&csk->write_queue))
   push_tx_frames(csk, 0);
  cxgbi_conn_tx_open(csk);
 }
 spin_unlock_bh(&csk->lock);

rel_skb:
 __kfree_skb(skb);
}
