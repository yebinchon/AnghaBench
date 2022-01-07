
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {struct fritz_adapter* priv; } ;
struct fritz_adapter {int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;
 int AVM_IDX_ISAC_FIFO ;
 scalar_t__ AVM_INDEX ;
 int insb (scalar_t__,unsigned char*,int) ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fcpci_read_isac_fifo(struct isac *isac, unsigned char * data,
     int size)
{
 struct fritz_adapter *adapter = isac->priv;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 outb(AVM_IDX_ISAC_FIFO, adapter->io + AVM_INDEX);
 insb(adapter->io + AVM_DATA, data, size);
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
}
