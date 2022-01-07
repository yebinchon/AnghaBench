
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; unsigned char* data; } ;
struct TYPE_3__ {int xml; int cmd; } ;
struct TYPE_4__ {TYPE_1__ sr; } ;
struct fritz_bcs {int fifo_size; scalar_t__ mode; int tx_cnt; int channel; TYPE_2__ ctrl; struct sk_buff* tx_skb; struct fritz_adapter* adapter; } ;
struct fritz_adapter {int type; int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;



 scalar_t__ AVM_HDLC_FIFO_1 ;
 scalar_t__ AVM_HDLC_FIFO_2 ;
 int BUG_ON (int) ;
 int DBG (int,char*,...) ;
 int HDLC_CMD_XME ;
 scalar_t__ HDLC_FIFO ;
 scalar_t__ L1_MODE_TRANS ;
 int __fcpci_write_ctrl (struct fritz_bcs*,int) ;
 int __fcpnp_write_ctrl (struct fritz_bcs*,int) ;
 int fcpci2_write_ctrl (struct fritz_bcs*,int) ;
 int outsb (scalar_t__,unsigned char*,int) ;
 int outsl (scalar_t__,unsigned char*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hdlc_fill_fifo(struct fritz_bcs *bcs)
{
 struct fritz_adapter *adapter = bcs->adapter;
 struct sk_buff *skb = bcs->tx_skb;
 int count;
 unsigned long flags;
 unsigned char *p;

 DBG(0x40, "hdlc_fill_fifo");

 BUG_ON(skb->len == 0);

 bcs->ctrl.sr.cmd &= ~HDLC_CMD_XME;
 if (bcs->tx_skb->len > bcs->fifo_size) {
  count = bcs->fifo_size;
 } else {
  count = bcs->tx_skb->len;
  if (bcs->mode != L1_MODE_TRANS)
   bcs->ctrl.sr.cmd |= HDLC_CMD_XME;
 }
 DBG(0x40, "hdlc_fill_fifo %d/%d", count, bcs->tx_skb->len);
 p = bcs->tx_skb->data;
 skb_pull(bcs->tx_skb, count);
 bcs->tx_cnt += count;
 bcs->ctrl.sr.xml = ((count == bcs->fifo_size) ? 0 : count);

 switch (adapter->type) {
 case 130:
  spin_lock_irqsave(&adapter->hw_lock, flags);

  __fcpci_write_ctrl(bcs, 3);
  outsl(adapter->io + AVM_DATA + HDLC_FIFO,
        p, (count + 3) / 4);
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
  break;
 case 129:
  fcpci2_write_ctrl(bcs, 3);
  outsl(adapter->io +
        (bcs->channel ? AVM_HDLC_FIFO_2 : AVM_HDLC_FIFO_1),
        p, (count + 3) / 4);
  break;
 case 128:
  spin_lock_irqsave(&adapter->hw_lock, flags);

  __fcpnp_write_ctrl(bcs, 3);
  outsb(adapter->io + AVM_DATA, p, count);
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
  break;
 }
}
