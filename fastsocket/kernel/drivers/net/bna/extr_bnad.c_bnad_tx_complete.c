
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct bnad {struct net_device* netdev; } ;
struct bna_tcb {int flags; int i_dbell; int q_depth; } ;


 scalar_t__ BNAD_NETIF_WAKE_THRESHOLD ;
 int BNAD_TXQ_FREE_SENT ;
 int BNAD_TXQ_TX_STARTED ;
 int BNAD_UPDATE_CTR (struct bnad*,int ) ;
 scalar_t__ BNA_QE_FREE_CNT (struct bna_tcb*,int ) ;
 int bna_ib_ack (int ,scalar_t__) ;
 scalar_t__ bnad_txcmpl_process (struct bnad*,struct bna_tcb*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ likely (scalar_t__) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_queue_wakeup ;
 int netif_wake_queue (struct net_device*) ;
 int smp_mb__before_clear_bit () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32
bnad_tx_complete(struct bnad *bnad, struct bna_tcb *tcb)
{
 struct net_device *netdev = bnad->netdev;
 u32 sent = 0;

 if (test_and_set_bit(BNAD_TXQ_FREE_SENT, &tcb->flags))
  return 0;

 sent = bnad_txcmpl_process(bnad, tcb);
 if (sent) {
  if (netif_queue_stopped(netdev) &&
      netif_carrier_ok(netdev) &&
      BNA_QE_FREE_CNT(tcb, tcb->q_depth) >=
        BNAD_NETIF_WAKE_THRESHOLD) {
   if (test_bit(BNAD_TXQ_TX_STARTED, &tcb->flags)) {
    netif_wake_queue(netdev);
    BNAD_UPDATE_CTR(bnad, netif_queue_wakeup);
   }
  }
 }

 if (likely(test_bit(BNAD_TXQ_TX_STARTED, &tcb->flags)))
  bna_ib_ack(tcb->i_dbell, sent);

 smp_mb__before_clear_bit();
 clear_bit(BNAD_TXQ_FREE_SENT, &tcb->flags);

 return sent;
}
