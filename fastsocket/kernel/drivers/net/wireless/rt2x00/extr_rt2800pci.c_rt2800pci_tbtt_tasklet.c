
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int beacon_int; int flags; scalar_t__ intf_ap_count; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int tbtt_tick; } ;


 int BCN_TBTT_OFFSET ;
 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_BEACON_INTERVAL ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int INT_MASK_CSR_TBTT ;
 int rt2800pci_enable_interrupt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00lib_beacondone (struct rt2x00_dev*) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2800pci_tbtt_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 u32 reg;

 rt2x00lib_beacondone(rt2x00dev);

 if (rt2x00dev->intf_ap_count) {






  if (drv_data->tbtt_tick == (BCN_TBTT_OFFSET - 2)) {
   rt2x00mmio_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
   rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_INTERVAL,
        (rt2x00dev->beacon_int * 16) - 1);
   rt2x00mmio_register_write(rt2x00dev, BCN_TIME_CFG, reg);
  } else if (drv_data->tbtt_tick == (BCN_TBTT_OFFSET - 1)) {
   rt2x00mmio_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
   rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_INTERVAL,
        (rt2x00dev->beacon_int * 16));
   rt2x00mmio_register_write(rt2x00dev, BCN_TIME_CFG, reg);
  }
  drv_data->tbtt_tick++;
  drv_data->tbtt_tick %= BCN_TBTT_OFFSET;
 }

 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  rt2800pci_enable_interrupt(rt2x00dev, INT_MASK_CSR_TBTT);
}
