
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct fritz_bcs {TYPE_1__ ctrl; scalar_t__ channel; struct fritz_adapter* adapter; } ;
struct fritz_adapter {scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;
 int AVM_IDX_HDLC_1 ;
 int AVM_IDX_HDLC_2 ;
 scalar_t__ AVM_INDEX ;
 int DBG (int,char*,scalar_t__,int,int) ;
 scalar_t__ HDLC_CTRL ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void __fcpci_write_ctrl(struct fritz_bcs *bcs, int which)
{
 struct fritz_adapter *adapter = bcs->adapter;
 int idx = bcs->channel ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;

 DBG(0x40, "hdlc %c wr%x ctrl %x",
     'A' + bcs->channel, which, bcs->ctrl.ctrl);

 outl(idx, adapter->io + AVM_INDEX);
 outl(bcs->ctrl.ctrl, adapter->io + AVM_DATA + HDLC_CTRL);
}
