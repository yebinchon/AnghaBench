
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fnic {int tx_queue; } ;
struct fc_frame {int dummy; } ;


 int fnic_send_frame (struct fnic*,struct fc_frame*) ;
 struct sk_buff* skb_dequeue (int *) ;

void fnic_flush_tx(struct fnic *fnic)
{
 struct sk_buff *skb;
 struct fc_frame *fp;

 while ((skb = skb_dequeue(&fnic->tx_queue))) {
  fp = (struct fc_frame *)skb;
  fnic_send_frame(fnic, fp);
 }
}
