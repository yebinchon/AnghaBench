
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int irqmask_lock; int autowake_tasklet; int rxdone_tasklet; int tbtt_tasklet; int pretbtt_tasklet; int flags; } ;
typedef int irqreturn_t ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int INT_MASK_CSR ;
 int INT_MASK_CSR_TX_FIFO_STATUS ;
 int INT_SOURCE_CSR ;
 int INT_SOURCE_CSR_AUTO_WAKEUP ;
 int INT_SOURCE_CSR_PRE_TBTT ;
 int INT_SOURCE_CSR_RX_DONE ;
 int INT_SOURCE_CSR_TBTT ;
 int INT_SOURCE_CSR_TX_FIFO_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int rt2800pci_txstatus_interrupt (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_get_field32 (int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t rt2800pci_interrupt(int irq, void *dev_instance)
{
 struct rt2x00_dev *rt2x00dev = dev_instance;
 u32 reg, mask;


 rt2x00mmio_register_read(rt2x00dev, INT_SOURCE_CSR, &reg);
 rt2x00mmio_register_write(rt2x00dev, INT_SOURCE_CSR, reg);

 if (!reg)
  return IRQ_NONE;

 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return IRQ_HANDLED;






 mask = ~reg;

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_TX_FIFO_STATUS)) {
  rt2800pci_txstatus_interrupt(rt2x00dev);



  rt2x00_set_field32(&mask, INT_MASK_CSR_TX_FIFO_STATUS, 1);
 }

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_PRE_TBTT))
  tasklet_hi_schedule(&rt2x00dev->pretbtt_tasklet);

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_TBTT))
  tasklet_hi_schedule(&rt2x00dev->tbtt_tasklet);

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_RX_DONE))
  tasklet_schedule(&rt2x00dev->rxdone_tasklet);

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_AUTO_WAKEUP))
  tasklet_schedule(&rt2x00dev->autowake_tasklet);





 spin_lock(&rt2x00dev->irqmask_lock);
 rt2x00mmio_register_read(rt2x00dev, INT_MASK_CSR, &reg);
 reg &= mask;
 rt2x00mmio_register_write(rt2x00dev, INT_MASK_CSR, reg);
 spin_unlock(&rt2x00dev->irqmask_lock);

 return IRQ_HANDLED;
}
