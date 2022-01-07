
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd; scalar_t__ xml; } ;
struct TYPE_3__ {TYPE_2__ sr; } ;
struct fritz_bcs {scalar_t__ mode; scalar_t__ tx_cnt; int tx_skb; TYPE_1__ ctrl; struct fritz_adapter* adapter; } ;
struct fritz_adapter {int (* write_ctrl ) (struct fritz_bcs*,int) ;} ;


 int DBG (int,char*) ;
 int HDLC_CMD_XRS ;
 scalar_t__ L1_MODE_HDLC ;
 int skb_push (int ,scalar_t__) ;
 int stub1 (struct fritz_bcs*,int) ;
 int stub2 (struct fritz_bcs*,int) ;

__attribute__((used)) static inline void hdlc_xdu_irq(struct fritz_bcs *bcs)
{
 struct fritz_adapter *adapter = bcs->adapter;





 bcs->ctrl.sr.xml = 0;
 bcs->ctrl.sr.cmd |= HDLC_CMD_XRS;
 adapter->write_ctrl(bcs, 1);
 bcs->ctrl.sr.cmd &= ~HDLC_CMD_XRS;

 if (!bcs->tx_skb) {
  DBG(0x10, "XDU without skb");
  adapter->write_ctrl(bcs, 1);
  return;
 }

 if (bcs->mode == L1_MODE_HDLC) {
  skb_push(bcs->tx_skb, bcs->tx_cnt);
  bcs->tx_cnt = 0;
 }
}
