
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stir_cb {TYPE_2__* netdev; int io_buf; int usbdev; int speed; scalar_t__ receiving; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int tx_errors; int tx_bytes; int tx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; int trans_start; } ;


 int TRANSMIT_TIMEOUT ;
 int fifo_txwait (struct stir_cb*,unsigned int) ;
 int irda_get_mtt (struct sk_buff*) ;
 scalar_t__ isfir (int ) ;
 int jiffies ;
 int pr_debug (char*,scalar_t__,unsigned int) ;
 int receive_stop (struct stir_cb*) ;
 int turnaround_delay (struct stir_cb*,int ) ;
 scalar_t__ usb_bulk_msg (int ,int ,int ,unsigned int,int *,int ) ;
 int usb_sndbulkpipe (int ,int) ;
 unsigned int wrap_fir_skb (struct sk_buff*,int ) ;
 unsigned int wrap_sir_skb (struct sk_buff*,int ) ;

__attribute__((used)) static void stir_send(struct stir_cb *stir, struct sk_buff *skb)
{
 unsigned wraplen;
 int first_frame = 0;


 if (stir->receiving) {
  receive_stop(stir);
  turnaround_delay(stir, irda_get_mtt(skb));
  first_frame = 1;
 }

 if (isfir(stir->speed))
  wraplen = wrap_fir_skb(skb, stir->io_buf);
 else
  wraplen = wrap_sir_skb(skb, stir->io_buf);


 if (!first_frame)
  fifo_txwait(stir, wraplen);

 stir->netdev->stats.tx_packets++;
 stir->netdev->stats.tx_bytes += skb->len;
 stir->netdev->trans_start = jiffies;
 pr_debug("send %d (%d)\n", skb->len, wraplen);

 if (usb_bulk_msg(stir->usbdev, usb_sndbulkpipe(stir->usbdev, 1),
    stir->io_buf, wraplen,
    ((void*)0), TRANSMIT_TIMEOUT))
  stir->netdev->stats.tx_errors++;
}
