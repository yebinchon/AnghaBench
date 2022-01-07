
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {scalar_t__ write_free_count; int * p_write_active_first; } ;
struct chbk {scalar_t__ claw_state; int collect_queue; scalar_t__ ndev; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 scalar_t__ CLAW_STOP ;
 int claw_free_wrt_buf (struct net_device*) ;
 int claw_hw_tx (struct sk_buff*,struct net_device*,int) ;
 struct sk_buff* claw_pack_skb (struct claw_privbk*) ;
 int claw_strt_out_IO (struct net_device*) ;
 int skb_queue_empty (int *) ;
 int trace ;

__attribute__((used)) static void
claw_write_next ( struct chbk * p_ch )
{

        struct net_device *dev;
        struct claw_privbk *privptr=((void*)0);
 struct sk_buff *pk_skb;
 int rc;

 CLAW_DBF_TEXT(4, trace, "claw_wrt");
        if (p_ch->claw_state == CLAW_STOP)
                return;
        dev = (struct net_device *) p_ch->ndev;
 privptr = (struct claw_privbk *) dev->ml_priv;
        claw_free_wrt_buf( dev );
 if ((privptr->write_free_count > 0) &&
     !skb_queue_empty(&p_ch->collect_queue)) {
    pk_skb = claw_pack_skb(privptr);
  while (pk_skb != ((void*)0)) {
   rc = claw_hw_tx( pk_skb, dev,1);
   if (privptr->write_free_count > 0) {
       pk_skb = claw_pack_skb(privptr);
   } else
    pk_skb = ((void*)0);
  }
 }
        if (privptr->p_write_active_first!=((void*)0)) {
                claw_strt_out_IO(dev);
        }
        return;
}
