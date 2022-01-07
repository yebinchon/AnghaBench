
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct fritz_bcs {TYPE_1__ ctrl; scalar_t__ channel; struct fritz_adapter* adapter; } ;
struct fritz_adapter {scalar_t__ io; } ;


 int AVM_HDLC_STATUS_1 ;
 int AVM_HDLC_STATUS_2 ;
 int DBG (int,char*,scalar_t__,int,int ) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void fcpci2_write_ctrl(struct fritz_bcs *bcs, int which)
{
 struct fritz_adapter *adapter = bcs->adapter;
 int offset = bcs->channel ? AVM_HDLC_STATUS_2 : AVM_HDLC_STATUS_1;

 DBG(0x40, "hdlc %c wr%x ctrl %x",
     'A' + bcs->channel, which, bcs->ctrl.ctrl);

 outl(bcs->ctrl.ctrl, adapter->io + offset);
}
