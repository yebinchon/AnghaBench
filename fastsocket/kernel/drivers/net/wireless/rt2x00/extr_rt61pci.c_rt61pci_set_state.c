
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int EBUSY ;
 int MAC_CSR12 ;
 int MAC_CSR12_BBP_CURRENT_STATE ;
 int MAC_CSR12_FORCE_WAKEUP ;
 int MAC_CSR12_PUT_TO_SLEEP ;
 unsigned int REGISTER_BUSY_COUNT ;
 int STATE_AWAKE ;
 int msleep (int) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_set_field32 (int *,int ,char) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt61pci_set_state(struct rt2x00_dev *rt2x00dev, enum dev_state state)
{
 u32 reg, reg2;
 unsigned int i;
 char put_to_sleep;

 put_to_sleep = (state != STATE_AWAKE);

 rt2x00mmio_register_read(rt2x00dev, MAC_CSR12, &reg);
 rt2x00_set_field32(&reg, MAC_CSR12_FORCE_WAKEUP, !put_to_sleep);
 rt2x00_set_field32(&reg, MAC_CSR12_PUT_TO_SLEEP, put_to_sleep);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR12, reg);






 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  rt2x00mmio_register_read(rt2x00dev, MAC_CSR12, &reg2);
  state = rt2x00_get_field32(reg2, MAC_CSR12_BBP_CURRENT_STATE);
  if (state == !put_to_sleep)
   return 0;
  rt2x00mmio_register_write(rt2x00dev, MAC_CSR12, reg);
  msleep(10);
 }

 return -EBUSY;
}
