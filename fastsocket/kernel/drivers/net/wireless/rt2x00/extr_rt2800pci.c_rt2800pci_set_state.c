
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int H2M_MAILBOX_CID ;
 int H2M_MAILBOX_STATUS ;
 int MCU_SLEEP ;
 int MCU_WAKEUP ;
 int STATE_AWAKE ;
 int STATE_SLEEP ;
 int TOKEN_SLEEP ;
 int TOKEN_WAKEUP ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int ,int,int) ;
 int rt2800pci_mcu_status (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static int rt2800pci_set_state(struct rt2x00_dev *rt2x00dev,
          enum dev_state state)
{
 if (state == STATE_AWAKE) {
  rt2800_mcu_request(rt2x00dev, MCU_WAKEUP, TOKEN_WAKEUP,
       0, 0x02);
  rt2800pci_mcu_status(rt2x00dev, TOKEN_WAKEUP);
 } else if (state == STATE_SLEEP) {
  rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_STATUS,
       0xffffffff);
  rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_CID,
       0xffffffff);
  rt2800_mcu_request(rt2x00dev, MCU_SLEEP, TOKEN_SLEEP,
       0xff, 0x01);
 }

 return 0;
}
