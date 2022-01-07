
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_2__* ops; TYPE_3__* rx; } ;
struct TYPE_6__ {int data_size; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {scalar_t__ (* set_device_state ) (struct rt2x00_dev*,int ) ;} ;


 int ARTCSR0 ;
 int ARTCSR0_ACK_CTS_11MBS ;
 int ARTCSR0_ACK_CTS_1MBS ;
 int ARTCSR0_ACK_CTS_2MBS ;
 int ARTCSR0_ACK_CTS_5_5MBS ;
 int ARTCSR1 ;
 int ARTCSR1_ACK_CTS_12MBS ;
 int ARTCSR1_ACK_CTS_18MBS ;
 int ARTCSR1_ACK_CTS_6MBS ;
 int ARTCSR1_ACK_CTS_9MBS ;
 int ARTCSR2 ;
 int ARTCSR2_ACK_CTS_24MBS ;
 int ARTCSR2_ACK_CTS_36MBS ;
 int ARTCSR2_ACK_CTS_48MBS ;
 int ARTCSR2_ACK_CTS_54MBS ;
 int BBPCSR1 ;
 int CNT0 ;
 int CNT3 ;
 int CNT4 ;
 int CSR1 ;
 int CSR11 ;
 int CSR11_CW_SELECT ;
 int CSR14 ;
 int CSR14_BEACON_GEN ;
 int CSR14_CFP_COUNT_PRELOAD ;
 int CSR14_TATIMW ;
 int CSR14_TBCM_PRELOAD ;
 int CSR14_TBCN ;
 int CSR14_TCFP ;
 int CSR14_TSF_COUNT ;
 int CSR14_TSF_SYNC ;
 int CSR1_BBP_RESET ;
 int CSR1_HOST_READY ;
 int CSR1_SOFT_RESET ;
 int CSR9 ;
 int CSR9_MAX_FRAME_UNIT ;
 int EBUSY ;
 int GPIOCSR ;
 int MACCSR0 ;
 int MACCSR1 ;
 int MACCSR2 ;
 int MACCSR2_DELAY ;
 int PCICSR ;
 int PCICSR_BIG_ENDIAN ;
 int PCICSR_BURST_LENTH ;
 int PCICSR_ENABLE_CLK ;
 int PCICSR_READ_MULTIPLE ;
 int PCICSR_RX_TRESHOLD ;
 int PCICSR_TX_TRESHOLD ;
 int PCICSR_WRITE_INVALID ;
 int PSCSR0 ;
 int PSCSR1 ;
 int PSCSR2 ;
 int PSCSR3 ;
 int PWRCSR0 ;
 int RALINKCSR ;
 int RALINKCSR_AR_BBP_DATA0 ;
 int RALINKCSR_AR_BBP_DATA1 ;
 int RALINKCSR_AR_BBP_ID0 ;
 int RALINKCSR_AR_BBP_ID1 ;
 int RALINKCSR_AR_BBP_VALID0 ;
 int RALINKCSR_AR_BBP_VALID1 ;
 int RXCSR3 ;
 int RXCSR3_BBP_ID0 ;
 int RXCSR3_BBP_ID0_VALID ;
 int RXCSR3_BBP_ID1 ;
 int RXCSR3_BBP_ID1_VALID ;
 int RXCSR3_BBP_ID2 ;
 int RXCSR3_BBP_ID2_VALID ;
 int RXCSR3_BBP_ID3 ;
 int RXCSR3_BBP_ID3_VALID ;
 int STATE_AWAKE ;
 int TESTCSR ;
 int TIMECSR ;
 int TIMECSR_BEACON_EXPECT ;
 int TIMECSR_US_64_COUNT ;
 int TIMECSR_US_COUNT ;
 int TXACKCSR0 ;
 int TXCSR8 ;
 int TXCSR8_BBP_ID0 ;
 int TXCSR8_BBP_ID0_VALID ;
 int TXCSR8_BBP_ID1 ;
 int TXCSR8_BBP_ID1_VALID ;
 int TXCSR8_BBP_ID2 ;
 int TXCSR8_BBP_ID2_VALID ;
 int TXCSR8_BBP_ID3 ;
 int TXCSR8_BBP_ID3_VALID ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;
 scalar_t__ stub1 (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2500pci_init_registers(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 rt2x00mmio_register_write(rt2x00dev, PSCSR0, 0x00020002);
 rt2x00mmio_register_write(rt2x00dev, PSCSR1, 0x00000002);
 rt2x00mmio_register_write(rt2x00dev, PSCSR2, 0x00020002);
 rt2x00mmio_register_write(rt2x00dev, PSCSR3, 0x00000002);

 rt2x00mmio_register_read(rt2x00dev, TIMECSR, &reg);
 rt2x00_set_field32(&reg, TIMECSR_US_COUNT, 33);
 rt2x00_set_field32(&reg, TIMECSR_US_64_COUNT, 63);
 rt2x00_set_field32(&reg, TIMECSR_BEACON_EXPECT, 0);
 rt2x00mmio_register_write(rt2x00dev, TIMECSR, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR9, &reg);
 rt2x00_set_field32(&reg, CSR9_MAX_FRAME_UNIT,
      rt2x00dev->rx->data_size / 128);
 rt2x00mmio_register_write(rt2x00dev, CSR9, reg);




 rt2x00mmio_register_read(rt2x00dev, CSR11, &reg);
 rt2x00_set_field32(&reg, CSR11_CW_SELECT, 0);
 rt2x00mmio_register_write(rt2x00dev, CSR11, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR14, &reg);
 rt2x00_set_field32(&reg, CSR14_TSF_COUNT, 0);
 rt2x00_set_field32(&reg, CSR14_TSF_SYNC, 0);
 rt2x00_set_field32(&reg, CSR14_TBCN, 0);
 rt2x00_set_field32(&reg, CSR14_TCFP, 0);
 rt2x00_set_field32(&reg, CSR14_TATIMW, 0);
 rt2x00_set_field32(&reg, CSR14_BEACON_GEN, 0);
 rt2x00_set_field32(&reg, CSR14_CFP_COUNT_PRELOAD, 0);
 rt2x00_set_field32(&reg, CSR14_TBCM_PRELOAD, 0);
 rt2x00mmio_register_write(rt2x00dev, CSR14, reg);

 rt2x00mmio_register_write(rt2x00dev, CNT3, 0);

 rt2x00mmio_register_read(rt2x00dev, TXCSR8, &reg);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID0, 10);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID0_VALID, 1);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID1, 11);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID1_VALID, 1);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID2, 13);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID2_VALID, 1);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID3, 12);
 rt2x00_set_field32(&reg, TXCSR8_BBP_ID3_VALID, 1);
 rt2x00mmio_register_write(rt2x00dev, TXCSR8, reg);

 rt2x00mmio_register_read(rt2x00dev, ARTCSR0, &reg);
 rt2x00_set_field32(&reg, ARTCSR0_ACK_CTS_1MBS, 112);
 rt2x00_set_field32(&reg, ARTCSR0_ACK_CTS_2MBS, 56);
 rt2x00_set_field32(&reg, ARTCSR0_ACK_CTS_5_5MBS, 20);
 rt2x00_set_field32(&reg, ARTCSR0_ACK_CTS_11MBS, 10);
 rt2x00mmio_register_write(rt2x00dev, ARTCSR0, reg);

 rt2x00mmio_register_read(rt2x00dev, ARTCSR1, &reg);
 rt2x00_set_field32(&reg, ARTCSR1_ACK_CTS_6MBS, 45);
 rt2x00_set_field32(&reg, ARTCSR1_ACK_CTS_9MBS, 37);
 rt2x00_set_field32(&reg, ARTCSR1_ACK_CTS_12MBS, 33);
 rt2x00_set_field32(&reg, ARTCSR1_ACK_CTS_18MBS, 29);
 rt2x00mmio_register_write(rt2x00dev, ARTCSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, ARTCSR2, &reg);
 rt2x00_set_field32(&reg, ARTCSR2_ACK_CTS_24MBS, 29);
 rt2x00_set_field32(&reg, ARTCSR2_ACK_CTS_36MBS, 25);
 rt2x00_set_field32(&reg, ARTCSR2_ACK_CTS_48MBS, 25);
 rt2x00_set_field32(&reg, ARTCSR2_ACK_CTS_54MBS, 25);
 rt2x00mmio_register_write(rt2x00dev, ARTCSR2, reg);

 rt2x00mmio_register_read(rt2x00dev, RXCSR3, &reg);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID0, 47);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID0_VALID, 1);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID1, 51);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID1_VALID, 1);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID2, 42);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID2_VALID, 1);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID3, 51);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID3_VALID, 1);
 rt2x00mmio_register_write(rt2x00dev, RXCSR3, reg);

 rt2x00mmio_register_read(rt2x00dev, PCICSR, &reg);
 rt2x00_set_field32(&reg, PCICSR_BIG_ENDIAN, 0);
 rt2x00_set_field32(&reg, PCICSR_RX_TRESHOLD, 0);
 rt2x00_set_field32(&reg, PCICSR_TX_TRESHOLD, 3);
 rt2x00_set_field32(&reg, PCICSR_BURST_LENTH, 1);
 rt2x00_set_field32(&reg, PCICSR_ENABLE_CLK, 1);
 rt2x00_set_field32(&reg, PCICSR_READ_MULTIPLE, 1);
 rt2x00_set_field32(&reg, PCICSR_WRITE_INVALID, 1);
 rt2x00mmio_register_write(rt2x00dev, PCICSR, reg);

 rt2x00mmio_register_write(rt2x00dev, PWRCSR0, 0x3f3b3100);

 rt2x00mmio_register_write(rt2x00dev, GPIOCSR, 0x0000ff00);
 rt2x00mmio_register_write(rt2x00dev, TESTCSR, 0x000000f0);

 if (rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_AWAKE))
  return -EBUSY;

 rt2x00mmio_register_write(rt2x00dev, MACCSR0, 0x00213223);
 rt2x00mmio_register_write(rt2x00dev, MACCSR1, 0x00235518);

 rt2x00mmio_register_read(rt2x00dev, MACCSR2, &reg);
 rt2x00_set_field32(&reg, MACCSR2_DELAY, 64);
 rt2x00mmio_register_write(rt2x00dev, MACCSR2, reg);

 rt2x00mmio_register_read(rt2x00dev, RALINKCSR, &reg);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_DATA0, 17);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_ID0, 26);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_VALID0, 1);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_DATA1, 0);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_ID1, 26);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_VALID1, 1);
 rt2x00mmio_register_write(rt2x00dev, RALINKCSR, reg);

 rt2x00mmio_register_write(rt2x00dev, BBPCSR1, 0x82188200);

 rt2x00mmio_register_write(rt2x00dev, TXACKCSR0, 0x00000020);

 rt2x00mmio_register_read(rt2x00dev, CSR1, &reg);
 rt2x00_set_field32(&reg, CSR1_SOFT_RESET, 1);
 rt2x00_set_field32(&reg, CSR1_BBP_RESET, 0);
 rt2x00_set_field32(&reg, CSR1_HOST_READY, 0);
 rt2x00mmio_register_write(rt2x00dev, CSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR1, &reg);
 rt2x00_set_field32(&reg, CSR1_SOFT_RESET, 0);
 rt2x00_set_field32(&reg, CSR1_HOST_READY, 1);
 rt2x00mmio_register_write(rt2x00dev, CSR1, reg);






 rt2x00mmio_register_read(rt2x00dev, CNT0, &reg);
 rt2x00mmio_register_read(rt2x00dev, CNT4, &reg);

 return 0;
}
