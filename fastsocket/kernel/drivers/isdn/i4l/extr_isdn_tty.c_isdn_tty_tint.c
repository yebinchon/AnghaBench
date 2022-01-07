
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_3__ {int xmit_queue; int lsr; int msr; int send_outstanding; struct tty_struct* tty; int isdn_channel; int isdn_driver; } ;
typedef TYPE_1__ modem_info ;


 int UART_LSR_TEMT ;
 int UART_MSR_CTS ;
 int dev_kfree_skb (struct sk_buff*) ;
 int isdn_writebuf_skb_stub (int ,int ,int,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void
isdn_tty_tint(modem_info * info)
{
 struct sk_buff *skb = skb_dequeue(&info->xmit_queue);
 int len, slen;

 if (!skb)
  return;
 len = skb->len;
 if ((slen = isdn_writebuf_skb_stub(info->isdn_driver,
        info->isdn_channel, 1, skb)) == len) {
  struct tty_struct *tty = info->tty;
  info->send_outstanding++;
  info->msr &= ~UART_MSR_CTS;
  info->lsr &= ~UART_LSR_TEMT;
  tty_wakeup(tty);
  return;
 }
 if (slen < 0) {

  dev_kfree_skb(skb);
  return;
 }
 skb_queue_head(&info->xmit_queue, skb);
}
