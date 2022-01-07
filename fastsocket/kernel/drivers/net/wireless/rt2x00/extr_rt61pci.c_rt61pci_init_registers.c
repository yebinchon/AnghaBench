
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {scalar_t__ (* set_device_state ) (struct rt2x00_dev*,int ) ;} ;


 int EBUSY ;
 int HW_BEACON_BASE0 ;
 int HW_BEACON_BASE1 ;
 int HW_BEACON_BASE2 ;
 int HW_BEACON_BASE3 ;
 int M2H_CMD_DONE_CSR ;
 int MAC_CSR1 ;
 int MAC_CSR10 ;
 int MAC_CSR13 ;
 int MAC_CSR1_BBP_RESET ;
 int MAC_CSR1_HOST_READY ;
 int MAC_CSR1_SOFT_RESET ;
 int MAC_CSR6 ;
 int MAC_CSR9 ;
 int MAC_CSR9_CW_SELECT ;
 int PCI_CFG_CSR ;
 int PHY_CSR1 ;
 int PHY_CSR5 ;
 int PHY_CSR6 ;
 int PHY_CSR7 ;
 int SEC_CSR0 ;
 int SEC_CSR1 ;
 int SEC_CSR5 ;
 int STATE_AWAKE ;
 int STA_CSR0 ;
 int STA_CSR1 ;
 int STA_CSR2 ;
 int TEST_MODE_CSR ;
 int TXRX_CSR0 ;
 int TXRX_CSR0_AUTO_TX_SEQ ;
 int TXRX_CSR0_DISABLE_RX ;
 int TXRX_CSR0_TX_WITHOUT_WAITING ;
 int TXRX_CSR1 ;
 int TXRX_CSR15 ;
 int TXRX_CSR1_BBP_ID0 ;
 int TXRX_CSR1_BBP_ID0_VALID ;
 int TXRX_CSR1_BBP_ID1 ;
 int TXRX_CSR1_BBP_ID1_VALID ;
 int TXRX_CSR1_BBP_ID2 ;
 int TXRX_CSR1_BBP_ID2_VALID ;
 int TXRX_CSR1_BBP_ID3 ;
 int TXRX_CSR1_BBP_ID3_VALID ;
 int TXRX_CSR2 ;
 int TXRX_CSR2_BBP_ID0 ;
 int TXRX_CSR2_BBP_ID0_VALID ;
 int TXRX_CSR2_BBP_ID1 ;
 int TXRX_CSR2_BBP_ID1_VALID ;
 int TXRX_CSR2_BBP_ID2 ;
 int TXRX_CSR2_BBP_ID2_VALID ;
 int TXRX_CSR2_BBP_ID3 ;
 int TXRX_CSR2_BBP_ID3_VALID ;
 int TXRX_CSR3 ;
 int TXRX_CSR3_BBP_ID0 ;
 int TXRX_CSR3_BBP_ID0_VALID ;
 int TXRX_CSR3_BBP_ID1 ;
 int TXRX_CSR3_BBP_ID1_VALID ;
 int TXRX_CSR3_BBP_ID2 ;
 int TXRX_CSR3_BBP_ID2_VALID ;
 int TXRX_CSR7 ;
 int TXRX_CSR7_ACK_CTS_12MBS ;
 int TXRX_CSR7_ACK_CTS_18MBS ;
 int TXRX_CSR7_ACK_CTS_6MBS ;
 int TXRX_CSR7_ACK_CTS_9MBS ;
 int TXRX_CSR8 ;
 int TXRX_CSR8_ACK_CTS_24MBS ;
 int TXRX_CSR8_ACK_CTS_36MBS ;
 int TXRX_CSR8_ACK_CTS_48MBS ;
 int TXRX_CSR8_ACK_CTS_54MBS ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_BEACON_GEN ;
 int TXRX_CSR9_BEACON_INTERVAL ;
 int TXRX_CSR9_TBTT_ENABLE ;
 int TXRX_CSR9_TIMESTAMP_COMPENSATE ;
 int TXRX_CSR9_TSF_SYNC ;
 int TXRX_CSR9_TSF_TICKING ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;
 scalar_t__ stub1 (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt61pci_init_registers(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR0, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR0_AUTO_TX_SEQ, 1);
 rt2x00_set_field32(&reg, TXRX_CSR0_DISABLE_RX, 0);
 rt2x00_set_field32(&reg, TXRX_CSR0_TX_WITHOUT_WAITING, 0);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR0, reg);

 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR1, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID0, 47);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID0_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID1, 30);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID1_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID2, 42);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID2_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID3, 30);
 rt2x00_set_field32(&reg, TXRX_CSR1_BBP_ID3_VALID, 1);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR1, reg);




 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR2, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID0, 13);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID0_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID1, 12);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID1_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID2, 11);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID2_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID3, 10);
 rt2x00_set_field32(&reg, TXRX_CSR2_BBP_ID3_VALID, 1);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR2, reg);




 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR3, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR3_BBP_ID0, 7);
 rt2x00_set_field32(&reg, TXRX_CSR3_BBP_ID0_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR3_BBP_ID1, 6);
 rt2x00_set_field32(&reg, TXRX_CSR3_BBP_ID1_VALID, 1);
 rt2x00_set_field32(&reg, TXRX_CSR3_BBP_ID2, 5);
 rt2x00_set_field32(&reg, TXRX_CSR3_BBP_ID2_VALID, 1);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR3, reg);

 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR7, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR7_ACK_CTS_6MBS, 59);
 rt2x00_set_field32(&reg, TXRX_CSR7_ACK_CTS_9MBS, 53);
 rt2x00_set_field32(&reg, TXRX_CSR7_ACK_CTS_12MBS, 49);
 rt2x00_set_field32(&reg, TXRX_CSR7_ACK_CTS_18MBS, 46);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR7, reg);

 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR8, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR8_ACK_CTS_24MBS, 44);
 rt2x00_set_field32(&reg, TXRX_CSR8_ACK_CTS_36MBS, 42);
 rt2x00_set_field32(&reg, TXRX_CSR8_ACK_CTS_48MBS, 42);
 rt2x00_set_field32(&reg, TXRX_CSR8_ACK_CTS_54MBS, 42);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR8, reg);

 rt2x00mmio_register_read(rt2x00dev, TXRX_CSR9, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_INTERVAL, 0);
 rt2x00_set_field32(&reg, TXRX_CSR9_TSF_TICKING, 0);
 rt2x00_set_field32(&reg, TXRX_CSR9_TSF_SYNC, 0);
 rt2x00_set_field32(&reg, TXRX_CSR9_TBTT_ENABLE, 0);
 rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_GEN, 0);
 rt2x00_set_field32(&reg, TXRX_CSR9_TIMESTAMP_COMPENSATE, 0);
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR9, reg);

 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR15, 0x0000000f);

 rt2x00mmio_register_write(rt2x00dev, MAC_CSR6, 0x00000fff);

 rt2x00mmio_register_read(rt2x00dev, MAC_CSR9, &reg);
 rt2x00_set_field32(&reg, MAC_CSR9_CW_SELECT, 0);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR9, reg);

 rt2x00mmio_register_write(rt2x00dev, MAC_CSR10, 0x0000071c);

 if (rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_AWAKE))
  return -EBUSY;

 rt2x00mmio_register_write(rt2x00dev, MAC_CSR13, 0x0000e000);





 rt2x00mmio_register_write(rt2x00dev, SEC_CSR0, 0x00000000);
 rt2x00mmio_register_write(rt2x00dev, SEC_CSR1, 0x00000000);
 rt2x00mmio_register_write(rt2x00dev, SEC_CSR5, 0x00000000);

 rt2x00mmio_register_write(rt2x00dev, PHY_CSR1, 0x000023b0);
 rt2x00mmio_register_write(rt2x00dev, PHY_CSR5, 0x060a100c);
 rt2x00mmio_register_write(rt2x00dev, PHY_CSR6, 0x00080606);
 rt2x00mmio_register_write(rt2x00dev, PHY_CSR7, 0x00000a08);

 rt2x00mmio_register_write(rt2x00dev, PCI_CFG_CSR, 0x28ca4404);

 rt2x00mmio_register_write(rt2x00dev, TEST_MODE_CSR, 0x00000200);

 rt2x00mmio_register_write(rt2x00dev, M2H_CMD_DONE_CSR, 0xffffffff);







 rt2x00mmio_register_write(rt2x00dev, HW_BEACON_BASE0, 0);
 rt2x00mmio_register_write(rt2x00dev, HW_BEACON_BASE1, 0);
 rt2x00mmio_register_write(rt2x00dev, HW_BEACON_BASE2, 0);
 rt2x00mmio_register_write(rt2x00dev, HW_BEACON_BASE3, 0);






 rt2x00mmio_register_read(rt2x00dev, STA_CSR0, &reg);
 rt2x00mmio_register_read(rt2x00dev, STA_CSR1, &reg);
 rt2x00mmio_register_read(rt2x00dev, STA_CSR2, &reg);




 rt2x00mmio_register_read(rt2x00dev, MAC_CSR1, &reg);
 rt2x00_set_field32(&reg, MAC_CSR1_SOFT_RESET, 1);
 rt2x00_set_field32(&reg, MAC_CSR1_BBP_RESET, 1);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, MAC_CSR1, &reg);
 rt2x00_set_field32(&reg, MAC_CSR1_SOFT_RESET, 0);
 rt2x00_set_field32(&reg, MAC_CSR1_BBP_RESET, 0);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, MAC_CSR1, &reg);
 rt2x00_set_field32(&reg, MAC_CSR1_HOST_READY, 1);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR1, reg);

 return 0;
}
