
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritz_adapter {int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;
 int AVM_IDX_HDLC_1 ;
 int AVM_IDX_HDLC_2 ;
 scalar_t__ AVM_INDEX ;
 scalar_t__ HDLC_STATUS ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 fcpci_read_hdlc_status(struct fritz_adapter *adapter, int nr)
{
 u32 val;
 int idx = nr ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 outl(idx, adapter->io + AVM_INDEX);
 val = inl(adapter->io + AVM_DATA + HDLC_STATUS);
 spin_unlock_irqrestore(&adapter->hw_lock, flags);
 return val;
}
