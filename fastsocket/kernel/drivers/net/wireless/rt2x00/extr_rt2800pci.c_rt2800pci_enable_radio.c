
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int EIO ;
 int H2M_MAILBOX_CID ;
 int H2M_MAILBOX_STATUS ;
 int MCU_SLEEP ;
 int MCU_WAKEUP ;
 int TOKEN_RADIO_OFF ;
 int TOKEN_WAKEUP ;
 int rt2800_enable_radio (struct rt2x00_dev*) ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int ,int,int) ;
 int rt2800_wait_wpdma_ready (struct rt2x00_dev*) ;
 int rt2800pci_init_queues (struct rt2x00_dev*) ;
 int rt2800pci_mcu_status (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rt2800pci_enable_radio(struct rt2x00_dev *rt2x00dev)
{
 int retval;


 rt2800_wait_wpdma_ready(rt2x00dev);

 if (unlikely(rt2800pci_init_queues(rt2x00dev)))
  return -EIO;

 retval = rt2800_enable_radio(rt2x00dev);
 if (retval)
  return retval;


 rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_STATUS, ~0);
 rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_CID, ~0);

 rt2800_mcu_request(rt2x00dev, MCU_SLEEP, TOKEN_RADIO_OFF, 0xff, 0x02);
 rt2800pci_mcu_status(rt2x00dev, TOKEN_RADIO_OFF);

 rt2800_mcu_request(rt2x00dev, MCU_WAKEUP, TOKEN_WAKEUP, 0, 0);
 rt2800pci_mcu_status(rt2x00dev, TOKEN_WAKEUP);

 return retval;
}
