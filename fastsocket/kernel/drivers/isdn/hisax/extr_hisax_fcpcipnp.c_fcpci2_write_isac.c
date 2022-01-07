
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {struct fritz_adapter* priv; } ;
struct fritz_adapter {int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_ISACSX_DATA ;
 scalar_t__ AVM_ISACSX_INDEX ;
 int DBG (int,char*,unsigned char,unsigned char) ;
 int outl (unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fcpci2_write_isac(struct isac *isac, unsigned char offset,
         unsigned char value)
{
 struct fritz_adapter *adapter = isac->priv;
 unsigned long flags;

 DBG(0x1000, " port %#x, value %#x",
     offset, value);
 spin_lock_irqsave(&adapter->hw_lock, flags);
 outl(offset, adapter->io + AVM_ISACSX_INDEX);
 outl(value, adapter->io + AVM_ISACSX_DATA);
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
}
