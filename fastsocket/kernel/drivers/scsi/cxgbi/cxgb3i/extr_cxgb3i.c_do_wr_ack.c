
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {int tid; int flags; int state; } ;
struct cpl_wr_ack {int snd_una; int credits; } ;


 int CXGBI_DBG_PDU_RX ;
 int CXGBI_DBG_TOE ;
 int __kfree_skb (struct sk_buff*) ;
 struct cpl_wr_ack* cplhdr (struct sk_buff*) ;
 int cxgbi_sock_rcv_wr_ack (struct cxgbi_sock*,int ,int ,int) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ,int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int do_wr_ack(struct t3cdev *cdev, struct sk_buff *skb, void *ctx)
{
 struct cxgbi_sock *csk = ctx;
 struct cpl_wr_ack *hdr = cplhdr(skb);

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_PDU_RX,
  "csk 0x%p,%u,0x%lx,%u, cr %u.\n",
  csk, csk->state, csk->flags, csk->tid, ntohs(hdr->credits));

 cxgbi_sock_rcv_wr_ack(csk, ntohs(hdr->credits), ntohl(hdr->snd_una), 1);
 __kfree_skb(skb);
 return 0;
}
