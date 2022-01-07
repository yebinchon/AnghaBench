
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int tbtt_tasklet; int autowake_tasklet; int rxdone_tasklet; int txstatus_tasklet; int irqmask_lock; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int INT_MASK_CSR ;
 int INT_MASK_CSR_BEACON_DONE ;
 int INT_MASK_CSR_ENABLE_MITIGATION ;
 int INT_MASK_CSR_MITIGATION_PERIOD ;
 int INT_MASK_CSR_RXDONE ;
 int INT_MASK_CSR_TXDONE ;
 int INT_SOURCE_CSR ;
 int MCU_INT_MASK_CSR ;
 int MCU_INT_MASK_CSR_0 ;
 int MCU_INT_MASK_CSR_1 ;
 int MCU_INT_MASK_CSR_2 ;
 int MCU_INT_MASK_CSR_3 ;
 int MCU_INT_MASK_CSR_4 ;
 int MCU_INT_MASK_CSR_5 ;
 int MCU_INT_MASK_CSR_6 ;
 int MCU_INT_MASK_CSR_7 ;
 int MCU_INT_MASK_CSR_TWAKEUP ;
 int MCU_INT_SOURCE_CSR ;
 int STATE_RADIO_IRQ_OFF ;
 int STATE_RADIO_IRQ_ON ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void rt61pci_toggle_irq(struct rt2x00_dev *rt2x00dev,
          enum dev_state state)
{
 int mask = (state == STATE_RADIO_IRQ_OFF);
 u32 reg;
 unsigned long flags;





 if (state == STATE_RADIO_IRQ_ON) {
  rt2x00mmio_register_read(rt2x00dev, INT_SOURCE_CSR, &reg);
  rt2x00mmio_register_write(rt2x00dev, INT_SOURCE_CSR, reg);

  rt2x00mmio_register_read(rt2x00dev, MCU_INT_SOURCE_CSR, &reg);
  rt2x00mmio_register_write(rt2x00dev, MCU_INT_SOURCE_CSR, reg);
 }





 spin_lock_irqsave(&rt2x00dev->irqmask_lock, flags);

 rt2x00mmio_register_read(rt2x00dev, INT_MASK_CSR, &reg);
 rt2x00_set_field32(&reg, INT_MASK_CSR_TXDONE, mask);
 rt2x00_set_field32(&reg, INT_MASK_CSR_RXDONE, mask);
 rt2x00_set_field32(&reg, INT_MASK_CSR_BEACON_DONE, mask);
 rt2x00_set_field32(&reg, INT_MASK_CSR_ENABLE_MITIGATION, mask);
 rt2x00_set_field32(&reg, INT_MASK_CSR_MITIGATION_PERIOD, 0xff);
 rt2x00mmio_register_write(rt2x00dev, INT_MASK_CSR, reg);

 rt2x00mmio_register_read(rt2x00dev, MCU_INT_MASK_CSR, &reg);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_0, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_1, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_2, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_3, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_4, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_5, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_6, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_7, mask);
 rt2x00_set_field32(&reg, MCU_INT_MASK_CSR_TWAKEUP, mask);
 rt2x00mmio_register_write(rt2x00dev, MCU_INT_MASK_CSR, reg);

 spin_unlock_irqrestore(&rt2x00dev->irqmask_lock, flags);

 if (state == STATE_RADIO_IRQ_OFF) {



  tasklet_kill(&rt2x00dev->txstatus_tasklet);
  tasklet_kill(&rt2x00dev->rxdone_tasklet);
  tasklet_kill(&rt2x00dev->autowake_tasklet);
  tasklet_kill(&rt2x00dev->tbtt_tasklet);
 }
}
