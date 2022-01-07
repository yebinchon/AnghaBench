
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritz_adapter {int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;
 unsigned char AVM_IDX_HDLC_1 ;
 unsigned char AVM_IDX_HDLC_2 ;
 scalar_t__ AVM_INDEX ;
 int HDLC_INT_RPR ;
 scalar_t__ HDLC_STATUS ;
 int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 fcpnp_read_hdlc_status(struct fritz_adapter *adapter, int nr)
{
 unsigned char idx = nr ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 outb(idx, adapter->io + AVM_INDEX);
 val = inb(adapter->io + AVM_DATA + HDLC_STATUS);
 if (val & HDLC_INT_RPR)
  val |= inb(adapter->io + AVM_DATA + HDLC_STATUS + 1) << 8;
 spin_unlock_irqrestore(&adapter->hw_lock, flags);
 return val;
}
