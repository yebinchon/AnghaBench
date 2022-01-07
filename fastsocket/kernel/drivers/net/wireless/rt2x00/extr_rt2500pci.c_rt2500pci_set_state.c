
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int EBUSY ;
 int PWRCSR1 ;
 int PWRCSR1_BBP_CURR_STATE ;
 int PWRCSR1_BBP_DESIRE_STATE ;
 int PWRCSR1_PUT_TO_SLEEP ;
 int PWRCSR1_RF_CURR_STATE ;
 int PWRCSR1_RF_DESIRE_STATE ;
 int PWRCSR1_SET_STATE ;
 unsigned int REGISTER_BUSY_COUNT ;
 int STATE_AWAKE ;
 int msleep (int) ;
 char rt2x00_get_field32 (int ,int ) ;
 int rt2x00_set_field32 (int *,int ,char) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt2500pci_set_state(struct rt2x00_dev *rt2x00dev,
          enum dev_state state)
{
 u32 reg, reg2;
 unsigned int i;
 char put_to_sleep;
 char bbp_state;
 char rf_state;

 put_to_sleep = (state != STATE_AWAKE);

 rt2x00mmio_register_read(rt2x00dev, PWRCSR1, &reg);
 rt2x00_set_field32(&reg, PWRCSR1_SET_STATE, 1);
 rt2x00_set_field32(&reg, PWRCSR1_BBP_DESIRE_STATE, state);
 rt2x00_set_field32(&reg, PWRCSR1_RF_DESIRE_STATE, state);
 rt2x00_set_field32(&reg, PWRCSR1_PUT_TO_SLEEP, put_to_sleep);
 rt2x00mmio_register_write(rt2x00dev, PWRCSR1, reg);






 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  rt2x00mmio_register_read(rt2x00dev, PWRCSR1, &reg2);
  bbp_state = rt2x00_get_field32(reg2, PWRCSR1_BBP_CURR_STATE);
  rf_state = rt2x00_get_field32(reg2, PWRCSR1_RF_CURR_STATE);
  if (bbp_state == state && rf_state == state)
   return 0;
  rt2x00mmio_register_write(rt2x00dev, PWRCSR1, reg);
  msleep(10);
 }

 return -EBUSY;
}
