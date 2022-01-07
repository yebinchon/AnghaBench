
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {struct fritz_adapter* priv; } ;
struct fritz_adapter {int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_ISACSX_DATA ;
 scalar_t__ AVM_ISACSX_INDEX ;
 unsigned char inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fcpci2_read_isac_fifo(struct isac *isac, unsigned char * data,
      int size)
{
 struct fritz_adapter *adapter = isac->priv;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 outl(0, adapter->io + AVM_ISACSX_INDEX);
 for (i = 0; i < size; i++)
  data[i] = inl(adapter->io + AVM_ISACSX_DATA);
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
}
